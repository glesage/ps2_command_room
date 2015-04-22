class AirSquad < ActiveRecord::Base
	validates :platoon, presence: true, numericality: true
	validates :squad, presence: true, numericality: true
	validates :room_id, presence: true, numericality: true
	validates_inclusion_of :squad, :in => 1..4, message: "Squad number must be between 1 and 4"
end
