require 'test_helper'

class UsersAuxControllerTest < ActionDispatch::IntegrationTest
  test "should get personal_obra_aux" do
    get users_aux_personal_obra_aux_url
    assert_response :success
  end

  test "should get bodeguero_obra_aux" do
    get users_aux_bodeguero_obra_aux_url
    assert_response :success
  end

  test "should get bodeguero_central_aux" do
    get users_aux_bodeguero_central_aux_url
    assert_response :success
  end

  test "should get boencargado_compra_aux" do
    get users_aux_boencargado_compra_aux_url
    assert_response :success
  end

end
