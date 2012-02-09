require 'test_helper'

class RangosControllerTest < ActionController::TestCase
  setup do
    @rango = rangos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rangos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rango" do
    assert_difference('Rango.count') do
      post :create, rango: @rango.attributes
    end

    assert_redirected_to rango_path(assigns(:rango))
  end

  test "should show rango" do
    get :show, id: @rango
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rango
    assert_response :success
  end

  test "should update rango" do
    put :update, id: @rango, rango: @rango.attributes
    assert_redirected_to rango_path(assigns(:rango))
  end

  test "should destroy rango" do
    assert_difference('Rango.count', -1) do
      delete :destroy, id: @rango
    end

    assert_redirected_to rangos_path
  end
end
