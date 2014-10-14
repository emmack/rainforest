class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :likes

      t.timestamps
    end
  end
end
