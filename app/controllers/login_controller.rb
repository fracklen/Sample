class LoginController < ApplicationController
  

  def index
  end

  def logout
  end

  def login
    account = Account.authenticate(params[:username],params[:password])
    if (account.present?)
      session[:user] = account
      redirect_to root_path
    else
      raise "Invalid password"
    end
  end
end
