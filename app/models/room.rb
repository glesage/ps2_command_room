class Room < ActiveRecord::Base
	validates :name, presence: true
	validates :token, presence: true

	belongs_to :member, as: :owner, dependent: :destroy
	has_many :members, dependent: :destroy
	has_many :air_squads, dependent: :destroy
	has_many :ground_squads, dependent: :destroy
	has_one :match, dependent: :destroy
end
