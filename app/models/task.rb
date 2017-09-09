class Task < ApplicationRecord
  belongs_to :user
	
	validates :title, :progress, :user_id, presence: true
	validates :progress, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
end
