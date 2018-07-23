require 'test_helper'

class AbastecimientoObrasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @abastecimiento_obra = abastecimiento_obras(:one)
  end

  test "should get index" do
    get abastecimiento_obras_url
    assert_response :success
  end

  test "should get new" do
    get new_abastecimiento_obra_url
    assert_response :success
  end

  test "should create abastecimiento_obra" do
    assert_difference('AbastecimientoObra.count') do
      post abastecimiento_obras_url, params: { abastecimiento_obra: {  } }
    end

    assert_redirected_to abastecimiento_obra_url(AbastecimientoObra.last)
  end

  test "should show abastecimiento_obra" do
    get abastecimiento_obra_url(@abastecimiento_obra)
    assert_response :success
  end

  test "should get edit" do
    get edit_abastecimiento_obra_url(@abastecimiento_obra)
    assert_response :success
  end

  test "should update abastecimiento_obra" do
    patch abastecimiento_obra_url(@abastecimiento_obra), params: { abastecimiento_obra: {  } }
    assert_redirected_to abastecimiento_obra_url(@abastecimiento_obra)
  end

  test "should destroy abastecimiento_obra" do
    assert_difference('AbastecimientoObra.count', -1) do
      delete abastecimiento_obra_url(@abastecimiento_obra)
    end

    assert_redirected_to abastecimiento_obras_url
  end
end
