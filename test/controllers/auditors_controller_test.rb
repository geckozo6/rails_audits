require 'test_helper'

class AuditorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auditor = auditors(:one)
  end

  test "should get index" do
    get auditors_url
    assert_response :success
  end

  test "should get new" do
    get new_auditor_url
    assert_response :success
  end

  test "should create auditor" do
    assert_difference('Auditor.count') do
      post auditors_url, params: { auditor: {  } }
    end

    assert_redirected_to auditor_url(Auditor.last)
  end

  test "should show auditor" do
    get auditor_url(@auditor)
    assert_response :success
  end

  test "should get edit" do
    get edit_auditor_url(@auditor)
    assert_response :success
  end

  test "should update auditor" do
    patch auditor_url(@auditor), params: { auditor: {  } }
    assert_redirected_to auditor_url(@auditor)
  end

  test "should destroy auditor" do
    assert_difference('Auditor.count', -1) do
      delete auditor_url(@auditor)
    end

    assert_redirected_to auditors_url
  end
end
