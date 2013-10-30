class Tag < ActiveRecord::Base
  attr_accessible :finish, :obs, :start, :tagid, :project_id, :user_id
  belongs_to :user
  belongs_to :project, foreign_key: 'project_id'
  validates :finish, :start, :obs,  presence: true
end
