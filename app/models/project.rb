class Project < ActiveRecord::Base
  belongs_to :user
  has_many  :projectparticipants
  attr_accessible :goal, :name, :video, :user_id, :project_id
  has_many :tags, class_name: 'tags'
   validates :name, :goal,  presence: true
  # Paperclip
  has_attached_file :video

 end
