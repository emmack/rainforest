class Add < ActiveRecord::Migration
  def change
  	  	    add_column :products, :rating_id, :integer

  end
end
