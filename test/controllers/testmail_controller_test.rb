require 'test_helper'

class TestmailControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get testmail_index_url
    assert_response :success
  end

end
