require 'test_helper'

class AuditorControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get auditor_list_url
    assert_response :success
  end

end
