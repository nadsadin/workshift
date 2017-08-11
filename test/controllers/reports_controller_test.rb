require 'test_helper'

class ReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reports_index_url
    assert_response :success
  end

  test "should get employee_total" do
    get reports_employee_total_url
    assert_response :success
  end

  test "should get employee_detail" do
    get reports_employee_detail_url
    assert_response :success
  end

  test "should get location_total" do
    get reports_location_total_url
    assert_response :success
  end

  test "should get location_detail" do
    get reports_location_detail_url
    assert_response :success
  end

end
