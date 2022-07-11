class EventsController < ApplicationController
  before_action :authenticate_user!, except: %i[ show ]
  before_action :set_event, only: %i[ show edit update destroy book_ticket cancel_event parsed_date ]
  before_action :set_form_vars
  before_action :authorize_user, only: %i[ edit update destroy ]
  before_action :parse_datetime, only: %i[ show ]


  # GET /events/1 or /events/1.json
  def show
    if @event.price > 0 && user_signed_in?
      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        customer_email: current_user.email,
        line_items: [{
            name: @event.title,
            images: [url_for(@event.event_image)],
            amount: @event.price * 100,
            currency: 'aud',
            quantity: 1
          }],
        payment_intent_data: {
          metadata: {
            event_id: @event.id,
            user_id: current_user.id,
            seller_id: @event.user_id
          }
        },
        success_url:"#{root_url}payments/success?id=#{@event.id}",
        cancel_url:"#{root_url}events/#{@event.id}"
      )
      @session_id = session.id
    end

    @google_embed = "https://google.com/maps/embed/v1/place?key=#{Rails.application.credentials.google_maps_api_key}&q=#{@event.address}&center=#{@event.latitude},#{@event.longitude}&zoom=17"


  end


  def parse_datetime()
    datetime = @event.start_date
    @hourstring = datetime.strftime("%I")
    @minutestring = datetime.strftime("%M")
    @meridianstring = datetime.strftime("%p")
    @daystring = datetime.strftime("%A")
    @datestring = datetime.strftime("%d")
    @monthstring = datetime.strftime("%B")
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events or /events.json
  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id

    respond_to do |format|
      if @event.save
        format.html { redirect_to event_url(@event), notice: "Event was successfully created." }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1 or /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to event_url(@event), notice: "Event was successfully updated." }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1 or /events/1.json
  def destroy
    @event.destroy

    respond_to do |format|
      format.html { redirect_to events_url, notice: "Event was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def book_ticket
    Ticket.create(
      event_id: @event.id,
      seller_id: @event.user_id,
      holder_id: current_user.id
    )
    redirect_to controller: 'payments', action: 'success', id: @event.id
  end
  
  def cancel_event
    @event.update_attribute(:event_status, 4)
    redirect_to host_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    def set_form_vars
      @categories = Category.all
      @statuses = Event.statuses
    end
  

    def authorize_user
      if @event.user_id != current_user.id
        flash[:alert] = "Unauthorized User"
        redirect_to events_path
      end
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.require(:event).permit(:title, :description, :start_date, :end_date, :address, :venue, :private, :capacity, :price, :user_id, :event_status, :category_id, :sub_category, :event_image, :longitude, :latitude, :address_line_1, :address_line_2, :city, :state)
    end
end
