class Product < ActiveRecord::Base
	mount_uploader :image, AvatarUploader

	validates :description, :name, presence: true
  validates :price_in_cents, numericality: {only_integer: true}
end
