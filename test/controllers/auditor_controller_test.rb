require 'test_helper'

class AuditorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get auditor_index_url
    assert_response :success
  end

  test "should get show" do
    get auditor_show_url
    assert_response :success
  end

  test "should get new" do
    get auditor_new_url
    assert_response :success
  end

  test "should get edit" do
    get auditor_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get auditor_destroy_url
    assert_response :success
  end

end
