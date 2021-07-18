require "test_helper"

class AdminPagesControllerTest < ActionDispatch::IntegrationTest

  test "admin_home renders html" do
    get admin_path
    assert_response :success
    assert_match /<!DOCTYPE html>/, @response.body
  end

  test "posts renders html" do
    get admin_posts_path
    assert_response :success
    assert_match /<!DOCTYPE html>/, @response.body
  end

  test "files renders html" do
    get admin_files_path
    assert_response :success
    assert_match /<!DOCTYPE html>/, @response.body
  end

  test "tags renders html" do
    get admin_tags_path
    assert_response :success
    assert_match /<!DOCTYPE html>/, @response.body
  end

  test "settings renders html" do
    get admin_settings_path
    assert_response :success
    assert_match /<!DOCTYPE html>/, @response.body
  end

  test "users renders html" do
    get admin_users_path
    assert_response :success
    assert_match /<!DOCTYPE html>/, @response.body
  end

  test "menu_items renders html" do
    get admin_menu_items_path
    assert_response :success
    assert_match /<!DOCTYPE html>/, @response.body
  end

  test "site_identity renders html" do
    get admin_settings_site_identity_path
    assert_response :success
    assert_match /<!DOCTYPE html>/, @response.body
  end

  test "podcast_feed renders html" do
    get admin_settings_podcast_feed_path
    assert_response :success
    assert_match /<!DOCTYPE html>/, @response.body
  end

  test "twitter renders html" do
    get admin_settings_twitter_path
    assert_response :success
    assert_match /<!DOCTYPE html>/, @response.body
  end

  test "substack renders html" do
    get admin_settings_substack_path
    assert_response :success
    assert_match /<!DOCTYPE html>/, @response.body
  end


end
