class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.text :description
      t.integer :property_id
      t.belongs_to :property
      t.timestamps
    end
  end
end
