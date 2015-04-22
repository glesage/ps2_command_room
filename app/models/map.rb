class Map < ActiveRecord::Base
	validates :name, presence: true
	validates :ps2_id, presence: true, numericality: true
	validates :server_id, presence: true, numericality: true
end
