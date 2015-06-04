class Room < ActiveRecord::Base
	validates :name, presence: true
	validates :token, presence: true

	has_and_belongs_to_many :members, dependent: :destroy
	has_many :air_squads, dependent: :destroy
	has_many :ground_squads, dependent: :destroy
	has_one :match, dependent: :destroy
end
