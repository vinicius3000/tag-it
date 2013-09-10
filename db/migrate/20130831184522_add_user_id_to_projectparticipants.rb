class AddUserIdToProjectparticipants < ActiveRecord::Migration
  def change
    add_column :projectparticipants, :user_id, :numeric
  end
end
