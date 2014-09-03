class AddAverage < ActiveRecord::Migration
  def change
  	  	add_column :ratings, :average, :integer

  end
end
