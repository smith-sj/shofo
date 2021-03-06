class ApplicationController < ActionController::Base
    
    before_action :configure_permitted_parameters, if: :devise_controller?
    after_action :store_action
  

    # stores last visited link for after sign-in
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


    protected
    # sanitize params for devise
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:phone_number, :first_name, :last_name, :date_of_birth])
      devise_parameter_sanitizer.permit(:account_update, keys: [:phone_number, :first_name, :last_name, :date_of_birth])

    end
end
