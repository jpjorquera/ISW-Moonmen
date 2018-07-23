require 'test_helper'

class BodegueroCentralsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bodeguero_central = bodeguero_centrals(:one)
  end

  test "should get index" do
    get bodeguero_centrals_url
    assert_response :success
  end

  test "should get new" do
    get new_bodeguero_central_url
    assert_response :success
  end

  test "should create bodeguero_central" do
    assert_difference('BodegueroCentral.count') do
      post bodeguero_centrals_url, params: { bodeguero_central: {  } }
    end

    assert_redirected_to bodeguero_central_url(BodegueroCentral.last)
  end

  test "should show bodeguero_central" do
    get bodeguero_central_url(@bodeguero_central)
    assert_response :success
  end

  test "should get edit" do
    get edit_bodeguero_central_url(@bodeguero_central)
    assert_response :success
  end

  test "should update bodeguero_central" do
    patch bodeguero_central_url(@bodeguero_central), params: { bodeguero_central: {  } }
    assert_redirected_to bodeguero_central_url(@bodeguero_central)
  end

  test "should destroy bodeguero_central" do
    assert_difference('BodegueroCentral.count', -1) do
      delete bodeguero_central_url(@bodeguero_central)
    end

    assert_redirected_to bodeguero_centrals_url
  end
end
