require 'test_helper'

class InventarioCentralsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inventario_central = inventario_centrals(:one)
  end

  test "should get index" do
    get inventario_centrals_url
    assert_response :success
  end

  test "should get new" do
    get new_inventario_central_url
    assert_response :success
  end

  test "should create inventario_central" do
    assert_difference('InventarioCentral.count') do
      post inventario_centrals_url, params: { inventario_central: {  } }
    end

    assert_redirected_to inventario_central_url(InventarioCentral.last)
  end

  test "should show inventario_central" do
    get inventario_central_url(@inventario_central)
    assert_response :success
  end

  test "should get edit" do
    get edit_inventario_central_url(@inventario_central)
    assert_response :success
  end

  test "should update inventario_central" do
    patch inventario_central_url(@inventario_central), params: { inventario_central: {  } }
    assert_redirected_to inventario_central_url(@inventario_central)
  end

  test "should destroy inventario_central" do
    assert_difference('InventarioCentral.count', -1) do
      delete inventario_central_url(@inventario_central)
    end

    assert_redirected_to inventario_centrals_url
  end
end
