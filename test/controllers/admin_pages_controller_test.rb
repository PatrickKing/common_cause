require "test_helper"

class AdminPagesControllerTest < ActionDispatch::IntegrationTest

  test "admin_home renders html" do
    get admin_path
    assert_response :success
    assert_match /<!DOCTYPE html>/, @response.body
  end

end
