require 'test_helper'

class UsageSourcesControllerTest < ActionController::TestCase
  setup do
    @usage_source = usage_sources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usage_sources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usage_source" do
    assert_difference('UsageSource.count') do
      post :create, usage_source: {  }
    end

    assert_redirected_to usage_source_path(assigns(:usage_source))
  end

  test "should show usage_source" do
    get :show, id: @usage_source
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usage_source
    assert_response :success
  end

  test "should update usage_source" do
    patch :update, id: @usage_source, usage_source: {  }
    assert_redirected_to usage_source_path(assigns(:usage_source))
  end

  test "should destroy usage_source" do
    assert_difference('UsageSource.count', -1) do
      delete :destroy, id: @usage_source
    end

    assert_redirected_to usage_sources_path
  end
end
