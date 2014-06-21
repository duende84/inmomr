class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :name
      t.float :phone
      t.float :cellphone
      t.string :address
      t.string :email
      t.string :web_page

      t.timestamps
    end
  end
end
