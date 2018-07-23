require 'test_helper'

class EncargadoComprasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @encargado_compra = encargado_compras(:one)
  end

  test "should get index" do
    get encargado_compras_url
    assert_response :success
  end

  test "should get new" do
    get new_encargado_compra_url
    assert_response :success
  end

  test "should create encargado_compra" do
    assert_difference('EncargadoCompra.count') do
      post encargado_compras_url, params: { encargado_compra: {  } }
    end

    assert_redirected_to encargado_compra_url(EncargadoCompra.last)
  end

  test "should show encargado_compra" do
    get encargado_compra_url(@encargado_compra)
    assert_response :success
  end

  test "should get edit" do
    get edit_encargado_compra_url(@encargado_compra)
    assert_response :success
  end

  test "should update encargado_compra" do
    patch encargado_compra_url(@encargado_compra), params: { encargado_compra: {  } }
    assert_redirected_to encargado_compra_url(@encargado_compra)
  end

  test "should destroy encargado_compra" do
    assert_difference('EncargadoCompra.count', -1) do
      delete encargado_compra_url(@encargado_compra)
    end

    assert_redirected_to encargado_compras_url
  end
end
