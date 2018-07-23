require 'test_helper'

class BodegueroObrasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bodeguero_obra = bodeguero_obras(:one)
  end

  test "should get index" do
    get bodeguero_obras_url
    assert_response :success
  end

  test "should get new" do
    get new_bodeguero_obra_url
    assert_response :success
  end

  test "should create bodeguero_obra" do
    assert_difference('BodegueroObra.count') do
      post bodeguero_obras_url, params: { bodeguero_obra: {  } }
    end

    assert_redirected_to bodeguero_obra_url(BodegueroObra.last)
  end

  test "should show bodeguero_obra" do
    get bodeguero_obra_url(@bodeguero_obra)
    assert_response :success
  end

  test "should get edit" do
    get edit_bodeguero_obra_url(@bodeguero_obra)
    assert_response :success
  end

  test "should update bodeguero_obra" do
    patch bodeguero_obra_url(@bodeguero_obra), params: { bodeguero_obra: {  } }
    assert_redirected_to bodeguero_obra_url(@bodeguero_obra)
  end

  test "should destroy bodeguero_obra" do
    assert_difference('BodegueroObra.count', -1) do
      delete bodeguero_obra_url(@bodeguero_obra)
    end

    assert_redirected_to bodeguero_obras_url
  end
end
