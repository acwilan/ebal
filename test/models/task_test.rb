require 'test_helper'

class TaskTest < ActiveSupport::TestCase
	
	def setup
		@task = Task.new(title: "Tarea 1", progress: 20, user_id: users(:andres).id)
	end
	
	test "should be valid" do
		assert @task.valid?
	end
	
	test "title shouldn't be blank" do
		@task.title = "     "
		assert_not @task.valid?
	end
	
	test "progress should be an integer" do
		@task.progress = 1.1
		assert_not @task.valid?
	end
	
	test "progress should be great or equal than zero" do
		@task.progress = -1
		assert_not @task.valid?
	end
	
	test "progress should be less or equal than a hundred" do
		@task.progress = 101
		assert_not @task.valid?
	end
	
	test "user_id must be set" do
		@task.user_id = nil
		assert_not @task.valid?
	end
	
end
