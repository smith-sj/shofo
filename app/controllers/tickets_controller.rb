class TicketsController < ApplicationController

    before_action :authenticate_user!
    before_action :get_ticket
    before_action :get_tickets, only: %i[ wallet ]
    helper_method :qr_code

    def validate
        # @ticket has been populated with a valid ticket unless the 
        # validation url was invalid in which case @ticket is nil

        # if ticket is NOT nil, populate some vars with ticket details
        if @ticket != nil
            @is_valid_ticket = true
            @ticket_holder = User.find(@ticket.holder_id)
            @ticket_holder_name = "#{@ticket_holder.first_name} #{@ticket_holder.last_name}"
            @ticket_holder_last_name = @ticket_holder.last_name
            @ticket_seller = User.find(@ticket.seller_id)
            @ticket_event = Event.find(@ticket.event_id)
            @ticket_event_image = url_for(@ticket_event.event_image)
            @ticket_event_title = @ticket_event.title
            @ticket_event_location = @ticket_event.venue ? @ticket_event.venue : @ticket_event.address
            @ticket_event_date = @ticket_event.start_date.strftime("%a %-d %b %Y")
            @ticket_event_time = @ticket_event.start_date.strftime("%I:%M%p")
            @ticket_price = @ticket_event.price
            @is_over_18 = 18 < ((Time.zone.now - @ticket_holder.date_of_birth.to_time) / 1.year.seconds).floor
        end
        # set validation_status to INVALID - if invalid ticket
        # VALID - if valid ticket and either seller or buyer is logged in
        # VALID_NO_AUTH - if valid but user is not authorized to see personal details
        if @ticket == nil
            @validation_status = :INVALID
        elsif current_user.id.in?([@ticket_seller.id, @ticket_holder.id])
            @validation_status = :VALID
        else
            @validation_status = :VALID_NO_AUTH
        end
    end

    def wallet
    end

    # Generate a QR code as SVG based on the tickets secret UID
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

    # get users bought tickets
    def get_tickets
        @tickets = current_user.bought_tickets
    end

    # get ticket if "secret" exists, else ticket = nil
    def get_ticket
        if Ticket.exists?(secret: params[:secret])
            @ticket = Ticket.find_by(secret: params[:secret])
        else
            @ticket = nil
        end
    end

    # calculates whether 18+ or not, based on DOB fed to method
    def check_age(dob)
        now = Time.now.utc.to_date
        now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
    end

end