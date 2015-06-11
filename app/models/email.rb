class Email < ActiveRecord::Base
	validates :email, presence: true
	validates :subject, presence: true
	validates :body, presence: true
end
