class Server < ActiveRecord::Base
	validates :name, presence: true
	validates :ps2_id, presence: true, numericality: true

	has_many :members, dependent: :destroy
	has_many :maps, dependent: :destroy
end
