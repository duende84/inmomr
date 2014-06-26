class CreatePropertyAttachments < ActiveRecord::Migration
  def change
    create_table :property_attachments do |t|
      t.integer :property_id
      t.string :image

      t.timestamps
    end
  end
end
