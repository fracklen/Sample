require 'spec_helper'

describe SessionsController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'logout'" do
    before do
      session[:user] = "something"
    end

    it "returns http success" do
      get :logout

      response.should be_redirect
      response.should redirect_to(root_path)
      session[:user].should be_nil
    end
  end

  describe "login" do
    before do 
      Account.create(:password => "pass", :password_confirmation => "pass", :username => "user")
    end

    it "logs in a valid user" do
      post 'login', {:username => "user", :password => "pass"}
      response.should be_redirect
      response.should redirect_to(root_path)
    end

    it "doesn't log in an invalid user" do
      post 'login', {:username => "invalid", :password => "invalid"}
      response.should be_redirect
      response.should redirect_to(session_path)
    end
  end

end
