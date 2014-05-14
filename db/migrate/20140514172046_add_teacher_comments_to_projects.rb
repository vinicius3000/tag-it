class AddTeacherCommentsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :TeacherComments, :string
  end
end
