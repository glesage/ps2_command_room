class GroundSquad < ActiveRecord::Base
	validates :platoon, presence: true, numericality: true
	validates :squad, presence: true, numericality: true

	belongs_to :room
	has_one :position, dependent: :destroy
end
