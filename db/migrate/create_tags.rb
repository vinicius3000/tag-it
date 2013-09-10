class CreateUsers < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.numeric :tagid
      t.string :obs
      t.numeric :start
      t.numeric :end

      t.timestamps
    end
  end
end