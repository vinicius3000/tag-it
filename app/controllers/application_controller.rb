class ApplicationController < ActionController::Base
  protect_from_forgery
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

rescue_from  ActiveRecord::RecordNotFound, :with => :rescue_not_found  
  
def rescue_not_found  
  flash[:error] = "A pagina que voce tentou acessar nao existe ou este projeto nao pertence a voce!"  
  redirect_to "/"  
end  
end
