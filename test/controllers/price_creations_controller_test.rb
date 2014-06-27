require 'test_helper'

class PriceCreationsControllerTest < ActionController::TestCase
  setup do
    @price_creation = price_creations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:price_creations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create price_creation" do
    assert_difference('PriceCreation.count') do
      post :create, price_creation: {  }
    end

    assert_redirected_to price_creation_path(assigns(:price_creation))
  end

  test "should show price_creation" do
    get :show, id: @price_creation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @price_creation
    assert_response :success
  end

  test "should update price_creation" do
    patch :update, id: @price_creation, price_creation: {  }
    assert_redirected_to price_creation_path(assigns(:price_creation))
  end

  test "should destroy price_creation" do
    assert_difference('PriceCreation.count', -1) do
      delete :destroy, id: @price_creation
    end

    assert_redirected_to price_creations_path
  end
end
