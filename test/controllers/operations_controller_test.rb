require 'test_helper'

class OperationsControllerTest < ActionDispatch::IntegrationTest
  test "should get center" do
    get operations_path
    assert_response :success
  end

end
