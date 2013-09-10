class CreateProjectparticipants < ActiveRecord::Migration
  def change
    create_table :projectparticipants do |t|

      t.timestamps
    end
  end
end
