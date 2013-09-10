class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 has_many  :projectparticipants
 has_many :projects
 has_many :tags

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :college, :function, :course
  attr_accessible :avatar
  has_attached_file :avatar, :default_url => "/images/:style/missing.png"
 
 

  after_create :assign_default_role
    
  def assign_default_role
    add_role(:user)
  end


end