class Room < ActiveRecord::Base
	validates :name, presence: true
	validates :owner, presence: true
	validates :token, presence: true
end
