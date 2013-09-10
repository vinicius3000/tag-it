class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.integer :tagid
      t.string :obs
      t.integer :start
      t.integer :finish

      t.timestamps
    end
  end
end
