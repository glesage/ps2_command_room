class Room < ActiveRecord::Base
	validates :name, presence: true
	validates :owner_id, presence: true
	validates :token, presence: true
end
