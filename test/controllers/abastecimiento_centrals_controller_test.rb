require 'test_helper'

class AbastecimientoCentralsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @abastecimiento_central = abastecimiento_centrals(:one)
  end

  test "should get index" do
    get abastecimiento_centrals_url
    assert_response :success
  end

  test "should get new" do
    get new_abastecimiento_central_url
    assert_response :success
  end

  test "should create abastecimiento_central" do
    assert_difference('AbastecimientoCentral.count') do
      post abastecimiento_centrals_url, params: { abastecimiento_central: {  } }
    end

    assert_redirected_to abastecimiento_central_url(AbastecimientoCentral.last)
  end

  test "should show abastecimiento_central" do
    get abastecimiento_central_url(@abastecimiento_central)
    assert_response :success
  end

  test "should get edit" do
    get edit_abastecimiento_central_url(@abastecimiento_central)
    assert_response :success
  end

  test "should update abastecimiento_central" do
    patch abastecimiento_central_url(@abastecimiento_central), params: { abastecimiento_central: {  } }
    assert_redirected_to abastecimiento_central_url(@abastecimiento_central)
  end

  test "should destroy abastecimiento_central" do
    assert_difference('AbastecimientoCentral.count', -1) do
      delete abastecimiento_central_url(@abastecimiento_central)
    end

    assert_redirected_to abastecimiento_centrals_url
  end
end
