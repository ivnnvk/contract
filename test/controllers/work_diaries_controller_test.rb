require 'test_helper'

class WorkDiariesControllerTest < ActionController::TestCase
  setup do
    @work_diary = work_diaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:work_diaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work_diary" do
    assert_difference('WorkDiary.count') do
      post :create, work_diary: {  }
    end

    assert_redirected_to work_diary_path(assigns(:work_diary))
  end

  test "should show work_diary" do
    get :show, id: @work_diary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @work_diary
    assert_response :success
  end

  test "should update work_diary" do
    patch :update, id: @work_diary, work_diary: {  }
    assert_redirected_to work_diary_path(assigns(:work_diary))
  end

  test "should destroy work_diary" do
    assert_difference('WorkDiary.count', -1) do
      delete :destroy, id: @work_diary
    end

    assert_redirected_to work_diaries_path
  end
end
