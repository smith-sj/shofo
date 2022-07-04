class PaymentsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:webhook]

    def success
    end

    def webhook
        payment_id = params[:data][:object][:payment_intent]
        payment = Stripe::PaymentIntent.retrieve(payment_id)
        event_id = payment.metadata.event_id
        user_id = payment.metadata.user_id
        seller_id = payment.metadata.seller_id
        p "Event id: #{event_id}"
        p "User id: #{user_id}"
        p "Seller id: #{seller_id}"
        p "Success"

        Ticket.create(
            event_id: event_id,
            seller_id: seller_id,
            holder_id: user_id
          )
    end

end
