class Map < ActiveRecord::Base
	validates :name, presence: true
	validates :ps2_id, presence: true, numericality: true

	belongs_to :server
	has_one :control, dependent: :destroy
	has_one :population, dependent: :destroy
	has_many :facilities, dependent: :destroy
end
