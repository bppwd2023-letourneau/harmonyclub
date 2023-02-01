class ApplicationController < ActionController::Base

    include Pundit::Authorization

    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :authenticate_user!, :only => [:new, :edit, :create, :update, :destroy]

    def user_not_authorized
      flash[:alert] = "You are not authorized to perform this action."
      redirect_back(fallback_location: root_path)
    end

    def after_sign_in_path_for(resource)
        stored_location_for(resource) || admin_panel_path
    end

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :role])
    end


end
