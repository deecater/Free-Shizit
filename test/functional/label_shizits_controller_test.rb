require 'test_helper'

class LabelShizitsControllerTest < ActionController::TestCase
  setup do
    @label_shizit = label_shizits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:label_shizits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create label_shizit" do
    assert_difference('LabelShizit.count') do
      post :create, label_shizit: {  }
    end

    assert_redirected_to label_shizit_path(assigns(:label_shizit))
  end

  test "should show label_shizit" do
    get :show, id: @label_shizit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @label_shizit
    assert_response :success
  end

  test "should update label_shizit" do
    put :update, id: @label_shizit, label_shizit: {  }
    assert_redirected_to label_shizit_path(assigns(:label_shizit))
  end

  test "should destroy label_shizit" do
    assert_difference('LabelShizit.count', -1) do
      delete :destroy, id: @label_shizit
    end

    assert_redirected_to label_shizits_path
  end
end
