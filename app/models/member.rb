class Member < ApplicationRecord
  belongs_to :user, optional: true
	
	validates :first_name, :last_name, :full_name, :gender, :email, presence: true
	validates :gender, inclusion: { in: %w(M F) , message: "%{value} no es un género correcto, debe ser M o F" }
	validates :email, format: { with: VALID_EMAIL_REGEX }
end
