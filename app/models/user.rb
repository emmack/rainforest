class User < ActiveRecord::Base
	has_secure_password
	
	has_many :reviews
	has_many :ratings
  	has_many :products, through: :reviews
  	has_many :products, through: :ratings

  	
  	validates :name, presence: true
	mount_uploader :avatar, AvatarUploader

end
