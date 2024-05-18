require "test_helper"

class SalaryChecksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get salary_checks_index_url
    assert_response :success
  end

  test "should get show" do
    get salary_checks_show_url
    assert_response :success
  end

  test "should get edit" do
    get salary_checks_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get salary_checks_destroy_url
    assert_response :success
  end
end
