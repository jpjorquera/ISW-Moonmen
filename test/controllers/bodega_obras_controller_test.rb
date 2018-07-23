require 'test_helper'

class BodegaObrasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bodega_obra = bodega_obras(:one)
  end

  test "should get index" do
    get bodega_obras_url
    assert_response :success
  end

  test "should get new" do
    get new_bodega_obra_url
    assert_response :success
  end

  test "should create bodega_obra" do
    assert_difference('BodegaObra.count') do
      post bodega_obras_url, params: { bodega_obra: {  } }
    end

    assert_redirected_to bodega_obra_url(BodegaObra.last)
  end

  test "should show bodega_obra" do
    get bodega_obra_url(@bodega_obra)
    assert_response :success
  end

  test "should get edit" do
    get edit_bodega_obra_url(@bodega_obra)
    assert_response :success
  end

  test "should update bodega_obra" do
    patch bodega_obra_url(@bodega_obra), params: { bodega_obra: {  } }
    assert_redirected_to bodega_obra_url(@bodega_obra)
  end

  test "should destroy bodega_obra" do
    assert_difference('BodegaObra.count', -1) do
      delete bodega_obra_url(@bodega_obra)
    end

    assert_redirected_to bodega_obras_url
  end
end
