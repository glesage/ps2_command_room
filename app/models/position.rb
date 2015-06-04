class Position < ActiveRecord::Base
	validates :x, presence: true, numericality: true
	validates :y, presence: true, numericality: true

	belongs_to :hex
	belongs_to :air_squad
	belongs_to :ground_squad
end
