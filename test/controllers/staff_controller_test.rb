require "test_helper"

class StaffControllerTest < ActionDispatch::IntegrationTest
  test "should get staff" do
    get staff_staff_url
    assert_response :success
  end
end
