require 'test_helper'

class ContactControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should post index" do
  	get :index
  	post :index, message: "Example Message"
  	assert_response :success
  end
end
