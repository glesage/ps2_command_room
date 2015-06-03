class Control < ActiveRecord::Base
	validates :map_id, presence: true, numericality: true
	validates :NC, presence: true, numericality: true
	validates :TR, presence: true, numericality: true
	validates :VS, presence: true, numericality: true
end
