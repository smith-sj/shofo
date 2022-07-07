class ApplicationController < ActionController::Base
    
    before_action :configure_permitted_parameters, if: :devise_controller?

    after_action :store_action
  
    def store_action
      return unless request.get? 
      if (request.path != "/users/sign_in" &&
          request.path != "/users/sign_up" &&
          request.path != "/users/password/new" &&
          request.path != "/users/password/edit" &&
          request.path != "/users/confirmation" &&
          request.path != "/users/sign_out" &&
          !request.xhr?) # don't store ajax calls
        store_location_for(:user, request.fullpath)
      end
    end

    # def default_url_options
    #   if Rails.env.production?
    #     {:host => "www.example.com"}
    #   else  
    #     {:host => "localhost:3000"}
    #   end
    # end

    def browse
      @q = Event.where(event_status: [1,2]).ransack(params[:q])
      @filtered_events = @q.result(distinct: true)
    end


    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:phone_number, :first_name, :last_name, :date_of_birth])
      devise_parameter_sanitizer.permit(:account_update, keys: [:phone_number, :first_name, :last_name, :date_of_birth])

    end
end
