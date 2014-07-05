class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :ticket_comments, :tickets_id, :ticket_id
  end
end
