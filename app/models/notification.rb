class Notification < ApplicationRecord
  belongs_to :user
	
	validates :title, :color, :user_id, presence: true
end
