class AddUserOpenAndOwnerOpenToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :user_open, :boolean
    add_column :tickets, :owner_open, :boolean
  end
end
