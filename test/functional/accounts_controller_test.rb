require 'test_helper'

class AccountsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should map show" do
    assert_generates "/accounts/1", {:controller => "accounts", :action => "show", :id => 1}
  end

end
