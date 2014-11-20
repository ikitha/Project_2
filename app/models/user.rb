class User < ActiveRecord::Base
	has_many :photos
	has_secure_password

	validates :firstname,
		presence: true
	validates :lastname,
		presence: true
	validates :username,
		uniqueness: true,
		presence: true
	validates :password,
		uniqueness: true,
		presence: true,
		length: {minimum: 5}
	validates :email,
		uniqueness: true,
		presence: true
end