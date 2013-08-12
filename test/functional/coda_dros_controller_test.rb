require 'test_helper'

class CodaDrosControllerTest < ActionController::TestCase
  setup do
    @coda_dro = coda_dros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coda_dros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coda_dro" do
    assert_difference('CodaDro.count') do
      post :create, :coda_dro => @coda_dro.attributes
    end

    assert_redirected_to coda_dro_path(assigns(:coda_dro))
  end

  test "should show coda_dro" do
    get :show, :id => @coda_dro.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @coda_dro.to_param
    assert_response :success
  end

  test "should update coda_dro" do
    put :update, :id => @coda_dro.to_param, :coda_dro => @coda_dro.attributes
    assert_redirected_to coda_dro_path(assigns(:coda_dro))
  end

  test "should destroy coda_dro" do
    assert_difference('CodaDro.count', -1) do
      delete :destroy, :id => @coda_dro.to_param
    end

    assert_redirected_to coda_dros_path
  end
end
