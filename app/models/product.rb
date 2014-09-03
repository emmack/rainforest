class Product < ActiveRecord::Base
 belongs_to :category
	has_many :reviews
  has_many :ratings


  has_many :users, through: :reviews
  has_many :users, through: :ratings





	mount_uploader :image, AvatarUploader

	validates :description, :name, presence: true
  validates :price_in_cents, numericality: {only_integer: true}
  

  	def formatted_price
   		price_in_dollars = price_in_cents.to_f / 100
    	sprintf("%.2f", price_in_dollars)
  	end

end
