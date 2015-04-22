class Member < ActiveRecord::Base
	validates :email, presence: true
	validates :name, presence: true
end
