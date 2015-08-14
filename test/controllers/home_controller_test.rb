require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should post index" do
  	get :index
		post :index, message: 'Example Message',
								 name: 'Example Name',
								 email: 'test@example.com',
								 phone: '1234 5678'
  	assert_response :success
  end
end
