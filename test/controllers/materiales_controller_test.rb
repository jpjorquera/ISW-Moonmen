require 'test_helper'

class MaterialesControllerTest < ActionDispatch::IntegrationTest
  test "should get agregar" do
    get materiales_agregar_url
    assert_response :success
  end

  test "should get peticion" do
    get materiales_peticion_url
    assert_response :success
  end

end
