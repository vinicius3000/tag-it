class AddAttachmentVideoToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :video
    end
  end

  def self.down
    drop_attached_file :projects, :video
  end
end
