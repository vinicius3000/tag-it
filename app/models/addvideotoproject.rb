class AddVideoToProject < ActiveRecord::Migration
  def self.up
    add_column :projects, :video_file_name, :string # Original filename
    add_column :projects, :video_content_type, :string # Mime type
    add_column :projects, :video_file_size, :integer # File size in bytes
  end

  def self.down
    remove_column :projects, :video_file_name
    remove_column :projects, :video_content_type
    remove_column :projects, :video_file_size
  end
end