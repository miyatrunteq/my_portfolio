class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller? 
  allow_browser versions: :modern
    def after_sign_in_path_for(resource)
      homes_top_path
    end
      private

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,keys:[:email,:name])
    end
end
