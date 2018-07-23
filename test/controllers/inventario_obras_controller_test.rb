require 'test_helper'

class InventarioObrasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inventario_obra = inventario_obras(:one)
  end

  test "should get index" do
    get inventario_obras_url
    assert_response :success
  end

  test "should get new" do
    get new_inventario_obra_url
    assert_response :success
  end

  test "should create inventario_obra" do
    assert_difference('InventarioObra.count') do
      post inventario_obras_url, params: { inventario_obra: {  } }
    end

    assert_redirected_to inventario_obra_url(InventarioObra.last)
  end

  test "should show inventario_obra" do
    get inventario_obra_url(@inventario_obra)
    assert_response :success
  end

  test "should get edit" do
    get edit_inventario_obra_url(@inventario_obra)
    assert_response :success
  end

  test "should update inventario_obra" do
    patch inventario_obra_url(@inventario_obra), params: { inventario_obra: {  } }
    assert_redirected_to inventario_obra_url(@inventario_obra)
  end

  test "should destroy inventario_obra" do
    assert_difference('InventarioObra.count', -1) do
      delete inventario_obra_url(@inventario_obra)
    end

    assert_redirected_to inventario_obras_url
  end
end
