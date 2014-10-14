class AddColumnsToLikes < ActiveRecord::Migration
  def change
  	    add_column :likes, :like, :integer
  	    add_column :likes, :product_id, :integer
  	    add_column :likes, :user_id, :integer




  end
end
