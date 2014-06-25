require 'test_helper'

class CadastralOfficesControllerTest < ActionController::TestCase
  setup do
    @cadastral_office = cadastral_offices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cadastral_offices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cadastral_office" do
    assert_difference('CadastralOffice.count') do
      post :create, cadastral_office: {  }
    end

    assert_redirected_to cadastral_office_path(assigns(:cadastral_office))
  end

  test "should show cadastral_office" do
    get :show, id: @cadastral_office
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cadastral_office
    assert_response :success
  end

  test "should update cadastral_office" do
    patch :update, id: @cadastral_office, cadastral_office: {  }
    assert_redirected_to cadastral_office_path(assigns(:cadastral_office))
  end

  test "should destroy cadastral_office" do
    assert_difference('CadastralOffice.count', -1) do
      delete :destroy, id: @cadastral_office
    end

    assert_redirected_to cadastral_offices_path
  end
end
