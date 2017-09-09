class Message < ApplicationRecord
  belongs_to :from, class_name: "User"
  belongs_to :to, class_name: "User"
  
  validates :subject, :body, :from_id, :to_id, presence: true
  validate :from_different_to
  
  private
  
    def from_different_to
      errors.add(:to_id, 'No puede enviarse a la misma persona el mensaje') if from_id == to_id
    end
    
end
