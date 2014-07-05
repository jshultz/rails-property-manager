class CreateTicketComments < ActiveRecord::Migration
  def change
    create_table :ticket_comments do |t|
      t.text :comment
      t.references :tickets, index: true
      t.timestamps
    end
  end
end
