class TicketsController < ApplicationController
    before_action :get_ticket
    before_action :get_tickets, only: %i[ wallet ]
    helper_method :qr_code
    before_action :authenticate_user!


    
    def validate
        @ticket_holder = nil
        @ticket_seller = nil
        @ticket_event = nil
        @is_minor = nil
        if @ticket == nil
            @validation_message = "This is not a valid ticket."
        elsif @ticket.seller_id != current_user.id
            @ticket_holder = User.find(@ticket.holder_id)
            @validation_message = "Ticket ##{ticket.id}) belonging to #{@ticket_holer.first_name} #{@ticket_holer.last_name}. 
            You must be logged in as the Host or Ticket Holder to view more information."
        else
            @ticket_holder = User.find(@ticket.holder_id)
            @ticket_seller = User.find(@ticket.seller_id)
            @ticket_event = Event.find(@ticket.event_id)
            @is_minor = 18 > ((Time.zone.now - @ticket_holder.date_of_birth.to_time) / 1.year.seconds).floor
            @validation_method = "Ticket ##{ticket.id}) belonging to #{@ticket_holer.first_name} #{@ticket_holer.last_name}."
        end
    end

    def wallet
    end

    def qr_code(secret)
        RQRCode::QRCode.new("#{request.base_url}/tickets/#{secret}").as_svg(
            offset: 0,
            standalone: true,
            module_size: 11,
            viewbox: true,
            use_path: true
          ).html_safe
    end

    private

    def get_tickets
        @tickets = current_user.bought_tickets
    end

    def get_ticket
        if Ticket.exists?(secret: params[:secret])
            @ticket = Ticket.find_by(secret: params[:secret])
        else
            @ticket = nil
        end
    end

    def check_age(dob)
        now = Time.now.utc.to_date
        now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
    end

end