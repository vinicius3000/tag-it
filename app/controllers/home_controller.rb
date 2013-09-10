class HomeController < ApplicationController 
  def index
    @users = User.all
  end
  
  def welcome
  end
  

  def help
    # put any code here that you need 
    # (although for a static view you probably won't have any)
  end
  
  def devise_mapping
      @devise_mapping ||= Devise.mappings[:user]
    end
end
