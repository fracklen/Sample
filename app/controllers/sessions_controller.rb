class SessionsController < ApplicationController
  

  def index
  end

  def logout
    if session[:user].present?
      reset_session
      redirect_to root_path
    end
  end

  def login
    account = Account.authenticate(params[:username],params[:password])
    if (account.present?)
      session[:user] = account
      redirect_to root_path
    else
      flash[:error] = "Invalid login"
      redirect_to session_path
    end
  end
end
