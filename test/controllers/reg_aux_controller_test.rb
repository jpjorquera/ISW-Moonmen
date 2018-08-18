require 'test_helper'

class RegAuxControllerTest < ActionDispatch::IntegrationTest
  test "should get bodobra" do
    get reg_aux_bodobra_url
    assert_response :success
  end

  test "should get bodcentral" do
    get reg_aux_bodcentral_url
    assert_response :success
  end

  test "should get personal" do
    get reg_aux_personal_url
    assert_response :success
  end

end
