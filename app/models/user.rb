class User < ApplicationRecord
  has_many :outbox, class_name: 'Message', foreign_key: 'from_id'
  has_many :inbox, class_name: 'Message', foreign_key: 'to_id'
  has_many :notifications
  has_many :tasks
	has_one :member
  
  validates :name, :email, presence: true, length: { maximum: 100 }
  validates :email, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
end
