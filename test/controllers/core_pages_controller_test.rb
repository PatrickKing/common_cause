require "test_helper"

class CorePagesControllerTest < ActionDispatch::IntegrationTest

  test "temp_page renders html" do
    get temp_page_path
    assert_response :success
    assert_match /<!DOCTYPE html>/, @response.body
  end

end
