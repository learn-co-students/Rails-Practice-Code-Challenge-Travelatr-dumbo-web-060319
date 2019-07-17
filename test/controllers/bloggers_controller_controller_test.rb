require 'test_helper'

class BloggersControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get bloggers_controller_new_url
    assert_response :success
  end

  test "should get create" do
    get bloggers_controller_create_url
    assert_response :success
  end

  test "should get update" do
    get bloggers_controller_update_url
    assert_response :success
  end

  test "should get edit" do
    get bloggers_controller_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get bloggers_controller_destroy_url
    assert_response :success
  end

  test "should get index" do
    get bloggers_controller_index_url
    assert_response :success
  end

  test "should get show" do
    get bloggers_controller_show_url
    assert_response :success
  end

end
