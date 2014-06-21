class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.integer :owner_id
      t.integer :property_type_id
      t.string :category
      t.string :state
      t.string :address
      t.integer :neighborhood_id
      t.integer :price
      t.integer :stratum
      t.text :description
      t.boolean :ads

      t.timestamps
    end
  end
end
