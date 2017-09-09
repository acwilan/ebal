require 'test_helper'

class InstrumentCategoryTest < ActiveSupport::TestCase
	
	def setup
		@category = InstrumentCategory.new(name: "Categoria")
	end
	
	test "should be valid" do
		assert @category.valid?
	end
	
	test "name shouldn't be empty" do
		@category.name = "    "
		assert_not @category.valid?
	end
	
end
