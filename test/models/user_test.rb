require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "Test User", email: "example@email.com", member: members(:andres))
  end
  
  test "should be valid" do
    assert @user.valid?
  end
  
  test "name should not be empty" do
    @user.name = "          "
    assert_not @user.valid?
  end
  
  test "email should not be empty" do
    @user.email = "          "
    assert_not @user.valid?
  end
  
  test "name shouldn't be more than 100 characters" do
    @user.name = "a" * 101
    assert_not @user.valid?
  end
  
  test "email shouldn't be more than 100 characters" do
    @user.email = "a" * 101
    @user.email += '@host.com'
    assert_not @user.valid?
  end
  
  test "email should be valid email address" do
    @user.email = "test"
    assert_not @user.valid?
  end
	
	test "user_id can be nil" do
		@user.member = nil
		assert @user.valid?
	end
	
end
