class Hex < ActiveRecord::Base
	validates :type_id, presence: true, numericality: true

	belongs_to :facility
	has_one :position, dependent: :destroy
end
