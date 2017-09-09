require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  
	def setup
		@member = members(:andres)
	end
	
	test "should be valid" do
		assert @member.valid?
	end
	
	test "first name shouldn't be blank" do
		@member.first_name = "    "
		assert_not @member.valid?
	end
	
	test "last name shouldn't be blank" do
		@member.last_name = "    "
		assert_not @member.valid?
	end
	
	test "full name shouldn't be blank" do
		@member.full_name = "    "
		assert_not @member.valid?
	end
	
	test "gender shouldn't be blank" do
		@member.gender = "   "
		assert_not @member.valid?
	end
	
	test "gender should be either M or F" do
		@member.gender = "M"
		assert @member.valid?
		@member.gender = "F"
		assert @member.valid?
		@member.gender = "Male"
		assert_not @member.valid?
	end
	
	test "email shouldn't be blank" do
		@member.email = "       "
		assert_not @member.valid?
	end
	
	test "email should be a valid email address" do
		@member.email = "asdfasdfs"
		assert_not @member.valid?
	end
	
	test "min age should be 5" do
		if !@member.birthday.nil?
			now = Time.now.utc.to_date
			dob = @member.birthday
			age = now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
			assert age >= 5
		end
	end
	
	test "phone should contain only numbers" do
		if !@member.phone.nil? 
			assert @member.phone.scan(/\D/).empty?
		end
	end
	
	test "phone should have exact length of 8" do
		if !@member.phone.nil?
			assert @member.phone.length == 8
		end
	end
	
	test "user_id can be nil" do
		@member.user_id = nil
		assert @member.valid?
	end
	
end
