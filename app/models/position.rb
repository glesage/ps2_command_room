class Position < ActiveRecord::Base
	validates :x, presence: true, numericality: true
	validates :y, presence: true, numericality: true
end
