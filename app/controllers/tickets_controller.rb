class TicketsController < ApplicationController
    before_action :get_ticket
    before_action :get_tickets
    helper_method :qr_code

    
    def validate
        @ticket_holder = User.find(@ticket.holder_id)
        @ticket_seller = User.find(@ticket.seller_id)
        @ticket_event = Event.find(@ticket.event_id)
        @is_minor = 18 > ((Time.zone.now - @ticket_holder.date_of_birth.to_time) / 1.year.seconds).floor
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