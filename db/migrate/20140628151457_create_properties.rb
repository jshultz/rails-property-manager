class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :business_name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.boolean :mdu
      t.decimal :units
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
