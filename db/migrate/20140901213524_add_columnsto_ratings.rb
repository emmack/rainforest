class AddColumnstoRatings < ActiveRecord::Migration
  def change
  		add_column :ratings, :rating, :integer
  	    add_column :ratings, :product_id, :integer
  	    add_column :ratings, :user_id, :integer
  end
end
