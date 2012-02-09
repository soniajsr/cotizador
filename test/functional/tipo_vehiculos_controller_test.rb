require 'test_helper'

class TipoVehiculosControllerTest < ActionController::TestCase
  setup do
    @tipo_vehiculo = tipo_vehiculos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_vehiculos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_vehiculo" do
    assert_difference('TipoVehiculo.count') do
      post :create, tipo_vehiculo: @tipo_vehiculo.attributes
    end

    assert_redirected_to tipo_vehiculo_path(assigns(:tipo_vehiculo))
  end

  test "should show tipo_vehiculo" do
    get :show, id: @tipo_vehiculo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_vehiculo
    assert_response :success
  end

  test "should update tipo_vehiculo" do
    put :update, id: @tipo_vehiculo, tipo_vehiculo: @tipo_vehiculo.attributes
    assert_redirected_to tipo_vehiculo_path(assigns(:tipo_vehiculo))
  end

  test "should destroy tipo_vehiculo" do
    assert_difference('TipoVehiculo.count', -1) do
      delete :destroy, id: @tipo_vehiculo
    end

    assert_redirected_to tipo_vehiculos_path
  end
end
