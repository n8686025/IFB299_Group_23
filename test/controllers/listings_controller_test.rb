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
  	get :index

  	get :show, id: assigns[:listings][0].id
  	assert_response :success
  end

  test "should post delete" do
  	get :index
  	get :show, id: assigns[:listings][0].id

  	post :show, id: assigns[:listings][0].id
  	assert_response :success
  end

  test "should get edit" do
    get :index

    get :edit, id: assigns[:listings][0].id
    assert_response :success
  end

  test "should post edit" do
    get :index
    get :edit, id: assigns[:listings][0].id

    post :edit, id: assigns[:listings][0].id, :listing => { address: "Test Address" }
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end
end
