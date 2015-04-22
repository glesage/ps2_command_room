class Control < ActiveRecord::Base
	validates :map_id, presence: true, numericality: true
	validates :NC, presence: true, numericality: true
	validates :TR, presence: true, numericality: true
	validates :VS, presence: true, numericality: true
	validates_inclusion_of :NC, :in => 0..100, message: "Control must be between 0 and 100"
	validates_inclusion_of :TR, :in => 0..100, message: "Control must be between 0 and 100"
	validates_inclusion_of :VS, :in => 0..100, message: "Control must be between 0 and 100"
end
