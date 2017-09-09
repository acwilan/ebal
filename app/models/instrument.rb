class Instrument < ApplicationRecord
  belongs_to :instrument_category
	
	validates :name, presence: true
end
