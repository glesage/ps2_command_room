class Facility < ActiveRecord::Base
	validates :faction, presence: true, numericality: true
	validates :map_id, presence: true, numericality: true
	validates :name, presence: true
	validates :ps2_id, presence: true, numericality: true
	validates :type_name, presence: true
	validates :type_id, presence: true, numericality: true
end
