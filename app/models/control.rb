class Control < ActiveRecord::Base
	validates :NC, presence: true, numericality: true
	validates :TR, presence: true, numericality: true
	validates :VS, presence: true, numericality: true

	belongs_to :map
end
