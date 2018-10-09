require 'test_helper'

class StaffSchedulesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get staff_schedules_index_url
    assert_response :success
  end

end
