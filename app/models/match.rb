class Match < ActiveRecord::Base
	validates :room_id, presence: true, numericality: true
	validates :end_time, presence: true
end
