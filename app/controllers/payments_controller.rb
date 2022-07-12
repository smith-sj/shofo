class PaymentsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:webhook]

    def success
        # list of vars to render the success card
        #  finds event from Event table based on id in params
        @event = Event.find_by(id: params[:id])
        @event_location = @event.venue ? @event.venue : @event.address
        @event_date = @event.start_date.strftime("%a %-d %b %Y")
        @event_time = @event.start_date.strftime("%I:%M%p")
        @is_over_18 = 18 < ((Time.zone.now - current_user.date_of_birth.to_time) / 1.year.seconds).floor
    end

    def webhook
        payment_id = params[:data][:object][:payment_intent]
        payment = Stripe::PaymentIntent.retrieve(payment_id)
        @event_id = payment.metadata.event_id
        @user_id = payment.metadata.user_id
        @seller_id = payment.metadata.seller_id

        p "Event ID: #{@event_id}"
        p "User ID: #{@user_id}"
        p "Seller ID: #{@seller_id}"

        # Create a new ticket for user
        Ticket.create(
            event_id: @event_id,
            seller_id: @seller_id,
            holder_id: @user_id
        )
    end

end
