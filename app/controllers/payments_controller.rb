class PaymentsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: %i[webhook success]

    def success
        @event_id = params[:eventId]
    end

    def webhook
        payment_id = params[:data][:object][:payment_intent]
        payment = Stripe::PaymentIntent.retrieve(payment_id)
        @event_id = payment.metadata.event_id
        @user_id = payment.metadata.user_id
        @seller_id = payment.metadata.seller_id
    end

end
