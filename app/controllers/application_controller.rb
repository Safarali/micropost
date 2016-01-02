class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  def after_sign_in_path_for(resource)
    if resource.class == Admin
      rails_admin_path
    else
       # Change profile_path to where you want regular users to go
      stored_location_for(resource) || microposts_path
    end
  end



  private

    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
end
