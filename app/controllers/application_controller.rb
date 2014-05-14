#!/bin/env ruby
# encoding: utf-8
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

 def to_minutes(seconds)
  
  m = (seconds/60).floor
  s = (seconds - (m * 60)).round
 
  # add leading zero to one-digit minute
  if m < 10
   m = "0#{m}"
  end
  # add leading zero to one-digit second
  if s < 10
   s = "0#{s}"
   end
  # return formatted time
  return "#{m}:#{s}"
 end

 helper_method :to_minutes

before_filter :set_locale
end

 
def set_locale
  I18n.locale = params[:locale] || I18n.default_locale
end