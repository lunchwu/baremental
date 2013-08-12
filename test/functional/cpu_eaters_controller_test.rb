require 'test_helper'

class CpuEatersControllerTest < ActionController::TestCase
  setup do
    @cpu_eater = cpu_eaters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpu_eaters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpu_eater" do
    assert_difference('CpuEater.count') do
      post :create, :cpu_eater => @cpu_eater.attributes
    end

    assert_redirected_to cpu_eater_path(assigns(:cpu_eater))
  end

  test "should show cpu_eater" do
    get :show, :id => @cpu_eater.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @cpu_eater.to_param
    assert_response :success
  end

  test "should update cpu_eater" do
    put :update, :id => @cpu_eater.to_param, :cpu_eater => @cpu_eater.attributes
    assert_redirected_to cpu_eater_path(assigns(:cpu_eater))
  end

  test "should destroy cpu_eater" do
    assert_difference('CpuEater.count', -1) do
      delete :destroy, :id => @cpu_eater.to_param
    end

    assert_redirected_to cpu_eaters_path
  end
end
