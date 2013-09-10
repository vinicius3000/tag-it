class AdicionandoIndex < ActiveRecord::Migration
  def change
  	add_index :projectparticipants, [:user_id, :project_id]
  end

  def down
  end
end
