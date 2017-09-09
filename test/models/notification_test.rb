require 'test_helper'

class NotificationTest < ActiveSupport::TestCase
	
	def setup
		@notification = Notification.new(title: 'Notificacion', color: 'yellow', user_id: users(:andres).id)
	end
	
	test "should be valid" do
		assert @notification.valid?
	end
	
	test "title should not be empty" do
		@notification.title = "   "
		assert_not @notification.valid?
	end
	
	test "color should not be empty" do
		@notification.color = "     "
		assert_not @notification.valid?
	end
	
	test "user id must be set" do
		@notification.user_id = nil
		assert_not @notification.valid?
	end
	
end
