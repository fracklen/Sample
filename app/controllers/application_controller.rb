class ApplicationController < ActionController::Base
  protect_from_forgery

  def validate_user
    return if current_user.present?

    redirect_to session_path
  end

  def current_user
    session[:user]
  end
end
