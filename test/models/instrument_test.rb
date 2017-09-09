require 'test_helper'

class InstrumentTest < ActiveSupport::TestCase
	
	def setup
		@instrument = instruments(:guitarra)
	end
	
	test "should be valid" do
		assert @instrument.valid?
	end
	
	test "name shouldn't be blank" do
		@instrument.name = "    "
		assert_not @instrument.valid?
	end
	
	test "category shouldn't be blank" do
		@instrument.instrument_category = nil
		assert_not @instrument.valid?
	end
	
end
