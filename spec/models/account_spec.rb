require 'spec_helper'

describe Account do
  it "can create an account" do
    Account.create(:password => "pass", :password_confirmation => "pass", :username => "user")

    Account.authenticate("user", "pass")
  end
end
