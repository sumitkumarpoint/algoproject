require 'test_helper'

class ForgotsControllerTest < ActionController::TestCase
  setup do
    @forgot = forgots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forgots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create forgot" do
    assert_difference('Forgot.count') do
      post :create, forgot: { email: @forgot.email }
    end

    assert_redirected_to forgot_path(assigns(:forgot))
  end

  test "should show forgot" do
    get :show, id: @forgot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @forgot
    assert_response :success
  end

  test "should update forgot" do
    patch :update, id: @forgot, forgot: { email: @forgot.email }
    assert_redirected_to forgot_path(assigns(:forgot))
  end

  test "should destroy forgot" do
    assert_difference('Forgot.count', -1) do
      delete :destroy, id: @forgot
    end

    assert_redirected_to forgots_path
  end
end
