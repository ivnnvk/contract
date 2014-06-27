require 'test_helper'

class HandoverWaysControllerTest < ActionController::TestCase
  setup do
    @handover_way = handover_ways(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:handover_ways)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create handover_way" do
    assert_difference('HandoverWay.count') do
      post :create, handover_way: {  }
    end

    assert_redirected_to handover_way_path(assigns(:handover_way))
  end

  test "should show handover_way" do
    get :show, id: @handover_way
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @handover_way
    assert_response :success
  end

  test "should update handover_way" do
    patch :update, id: @handover_way, handover_way: {  }
    assert_redirected_to handover_way_path(assigns(:handover_way))
  end

  test "should destroy handover_way" do
    assert_difference('HandoverWay.count', -1) do
      delete :destroy, id: @handover_way
    end

    assert_redirected_to handover_ways_path
  end
end
