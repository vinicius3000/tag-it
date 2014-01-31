class AddProjectToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :project, :string
  end
end
