require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_path
    assert_response :success
  end

#  test "should get show" do
#    get user_path
#    assert_response :success
#  end

#  test "should get new" do
#    get new_user_path
#    assert_response :success
#  end

#  test "should get create" do
#    get users_create_url
#    assert_response :success
#  end

#  test "should get edut" do
#    get users_edit_url
#    assert_response :success
#  end

#  test "should get update" do
#    get users_update_url
#    assert_response :success
#  end

#  test "should get destroy" do
#    get users_destroy_url
#    assert_response :success
#  end

end
