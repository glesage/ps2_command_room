class Server < ActiveRecord::Base
	validates :name, presence: true
	validates :ps2_id, presence: true, numericality: true
end
