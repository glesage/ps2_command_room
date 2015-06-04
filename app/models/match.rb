class Match < ActiveRecord::Base
	validates :end_time, presence: true

	belongs_to :room
end
