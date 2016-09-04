class CreateWishlistitems < ActiveRecord::Migration
  def change
    create_table :wishlistitems do |t|

      t.timestamps null: false
    end
  end
end
