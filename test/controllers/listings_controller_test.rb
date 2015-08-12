require 'test_helper'

class ListingsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should post new" do
  	get :new
  	post :new, listing: { address: "Example Address" }
  	assert_response :success
  end

  test "should get show" do
  	get :new
  	post :create, listing: { address: "Example Address" }

  	get :show, id: assigns(:listing).id
  	assert_response :success
  end

  test "should post delete" do
  	get :new
  	post :create, listing: { address: "Example Address" }
  	get :show, id: assigns(:listing).id

  	post :show, id: assigns(:listing).id
  	assert_response :success
  end

  test "should get edit" do
    get :new
    post :create, listing: { address: "Example Address" }

    get :edit, id: assigns(:listing).id
    assert_response :success
  end

  test "should post edit" do
    get :new
    post :create, listing: { address: "Example Address" }
    get :edit, id: assigns(:listing).id

    post :edit, id: assigns(:listing).id, :listing => { address: "Test Address" }
    assert_response :success
  end
end
