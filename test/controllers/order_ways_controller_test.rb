require 'test_helper'

class OrderWaysControllerTest < ActionController::TestCase
  setup do
    @order_way = order_ways(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_ways)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_way" do
    assert_difference('OrderWay.count') do
      post :create, order_way: {  }
    end

    assert_redirected_to order_way_path(assigns(:order_way))
  end

  test "should show order_way" do
    get :show, id: @order_way
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_way
    assert_response :success
  end

  test "should update order_way" do
    patch :update, id: @order_way, order_way: {  }
    assert_redirected_to order_way_path(assigns(:order_way))
  end

  test "should destroy order_way" do
    assert_difference('OrderWay.count', -1) do
      delete :destroy, id: @order_way
    end

    assert_redirected_to order_ways_path
  end
end
