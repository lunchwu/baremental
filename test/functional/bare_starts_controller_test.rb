require 'test_helper'

class BareStartsControllerTest < ActionController::TestCase
  setup do
    @bare_start = bare_starts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bare_starts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bare_start" do
    assert_difference('BareStart.count') do
      post :create, :bare_start => @bare_start.attributes
    end

    assert_redirected_to bare_start_path(assigns(:bare_start))
  end

  test "should show bare_start" do
    get :show, :id => @bare_start.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bare_start.to_param
    assert_response :success
  end

  test "should update bare_start" do
    put :update, :id => @bare_start.to_param, :bare_start => @bare_start.attributes
    assert_redirected_to bare_start_path(assigns(:bare_start))
  end

  test "should destroy bare_start" do
    assert_difference('BareStart.count', -1) do
      delete :destroy, :id => @bare_start.to_param
    end

    assert_redirected_to bare_starts_path
  end
end
