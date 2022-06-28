class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    def browse
      @q = Event.where(event_status: [1,2]).ransack(params[:q])
      @filtered_events = @q.result(distinct: true)
    end


    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:phone_number, :first_name, :last_name, :date_of_birth])
    end
end
