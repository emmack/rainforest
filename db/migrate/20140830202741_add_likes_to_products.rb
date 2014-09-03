class AddLikesToProducts < ActiveRecord::Migration
  def change
    add_column :products, :likes, :integer
  end
end
