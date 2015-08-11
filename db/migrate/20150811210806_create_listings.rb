class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :address
      t.integer :price
      t.datetime :showing_dates
      t.string :utilities
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :car_parks
      t.string :extra_info

      t.timestamps null: false
    end
  end
end
