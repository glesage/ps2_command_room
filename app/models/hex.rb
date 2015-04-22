class Hex < ActiveRecord::Base
	validates :facility_id, presence: true, numericality: true
	validates :position_id, presence: true, numericality: true
	validates :type, presence: true, numericality: true
end
