require 'test_helper'

class ShizitsControllerTest < ActionController::TestCase
  setup do
    @shizit = shizits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shizits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shizit" do
    assert_difference('Shizit.count') do
      post :create, shizit: { city: @shizit.city, description: @shizit.description, end_date: @shizit.end_date, id: @shizit.id, name: @shizit.name, promotion: @shizit.promotion, start_date: @shizit.start_date, state: @shizit.state, street_line1: @shizit.street_line1, street_line2: @shizit.street_line2, zipcode: @shizit.zipcode }
    end

    assert_redirected_to shizit_path(assigns(:shizit))
  end

  test "should show shizit" do
    get :show, id: @shizit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shizit
    assert_response :success
  end

  test "should update shizit" do
    put :update, id: @shizit, shizit: { city: @shizit.city, description: @shizit.description, end_date: @shizit.end_date, id: @shizit.id, name: @shizit.name, promotion: @shizit.promotion, start_date: @shizit.start_date, state: @shizit.state, street_line1: @shizit.street_line1, street_line2: @shizit.street_line2, zipcode: @shizit.zipcode }
    assert_redirected_to shizit_path(assigns(:shizit))
  end

  test "should destroy shizit" do
    assert_difference('Shizit.count', -1) do
      delete :destroy, id: @shizit
    end

    assert_redirected_to shizits_path
  end
end
