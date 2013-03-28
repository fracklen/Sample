require 'spec_helper'

describe LoginController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'logout'" do
    it "returns http success" do
      get 'logout'
      response.should be_success
    end
  end

  describe "GET 'login'" do
    before do 
      Account.create(:password => "pass", :password_confirmation => "pass", :username => "user")
    end

    it "returns http success" do
      post 'login', {:username => "user", :password => "pass"}
      response.should be_redirect
    end
  end

end
