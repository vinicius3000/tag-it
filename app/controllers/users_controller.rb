class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    authorize! :index, @user, :message => 'Nao possui acesso administrativo.'
    @users = User.all
  end

  def create
  @user = User.create( params[:user] )
  end

  def show
    @user = User.find(params[:id])
  end
 
  def update
    authorize! :update, @user, :message => 'Nao possui acesso administrativo..'
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user], :as => :admin)
      redirect_to users_path, :notice => "Usuario atualizado."
    else
      redirect_to users_path, :alert => "Impossivel atualizar usuario."
    end
  end
   
  def destroy
    authorize! :destroy, @user, :message => 'Nao possui acesso administrativo.'
    user = User.find(params[:id])
    unless user == current_user
      user.destroy
      redirect_to users_path, :notice => "Usuario exclido."
    else
      redirect_to users_path, :notice => "Nao foi possivel excluir usuario."
    end
  end
end
