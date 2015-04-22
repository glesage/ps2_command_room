class RoomMember < ActiveRecord::Base
	validates :member_id, presence: true, numericality: true
	validates :room_id, presence: true, numericality: true
end
