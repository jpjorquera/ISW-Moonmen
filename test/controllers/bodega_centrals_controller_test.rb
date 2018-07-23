require 'test_helper'

class BodegaCentralsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bodega_central = bodega_centrals(:one)
  end

  test "should get index" do
    get bodega_centrals_url
    assert_response :success
  end

  test "should get new" do
    get new_bodega_central_url
    assert_response :success
  end

  test "should create bodega_central" do
    assert_difference('BodegaCentral.count') do
      post bodega_centrals_url, params: { bodega_central: {  } }
    end

    assert_redirected_to bodega_central_url(BodegaCentral.last)
  end

  test "should show bodega_central" do
    get bodega_central_url(@bodega_central)
    assert_response :success
  end

  test "should get edit" do
    get edit_bodega_central_url(@bodega_central)
    assert_response :success
  end

  test "should update bodega_central" do
    patch bodega_central_url(@bodega_central), params: { bodega_central: {  } }
    assert_redirected_to bodega_central_url(@bodega_central)
  end

  test "should destroy bodega_central" do
    assert_difference('BodegaCentral.count', -1) do
      delete bodega_central_url(@bodega_central)
    end

    assert_redirected_to bodega_centrals_url
  end
end
