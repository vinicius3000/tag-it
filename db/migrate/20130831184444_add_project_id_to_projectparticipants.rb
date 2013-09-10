class AddProjectIdToProjectparticipants < ActiveRecord::Migration
  def change
    add_column :projectparticipants, :project_id, :numeric
  end
end
