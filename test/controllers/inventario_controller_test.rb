require 'test_helper'

class InventarioControllerTest < ActionDispatch::IntegrationTest
  test "should get ver" do
    get inventario_ver_url
    assert_response :success
  end

end
