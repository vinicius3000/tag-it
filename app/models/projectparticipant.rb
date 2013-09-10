class Projectparticipant < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :user_id, :project_id
   belongs_to :user
   belongs_to :project
  accepts_nested_attributes_for :user
  accepts_nested_attributes_for :project
end
