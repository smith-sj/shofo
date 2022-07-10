class TicketsController < ApplicationController
    before_action :get_ticket
    before_action :get_tickets, only: %i[ wallet ]
    helper_method :qr_code
    before_action :authenticate_user!

    def validate
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