class TagsController < ApplicationController
  # GET /tags
  # GET /tags.json
  def index
    @tags = Tag.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tags }
    end
  end

  # GET /tags/1
  # GET /tags/1.json
  def show
    @tag = Tag.find(params[:id])

    @project = @tag.project
    respond_to do |format|
      format.html { redirect_to @project, notice: 'Tag editada com sucesso.' }
      format.json { render json: @tag }
    end
  end

  # GET /tags/new
  # GET /tags/new.json
  def new
    @tag = Tag.new
    @project_project_id = params[:project_id]
    @user_user_id = params[:user_id]
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tag }
    end
  end

  # GET /tags/1/edit
  def edit
    @tag = Tag.find(params[:id])
    

  end

  # POST /tags
  # POST /tags.json
  def create
    session[:return_to]=nil 


    @project_project_id = params[:project_id]
    @user_user_id = params[:user_id]
    @tag = Tag.new(params[:tag])
    @project = @tag.project

    session[:return_to] ||= request.referer


    respond_to do |format|
      if @tag.save
        format.html { redirect_to session[:return_to], notice: 'Tag criada!' }
        format.json { render json: @tag, status: :created, location: @tag }
        format.js 
      else
        format.html { render action: "new" }
        format.json { render json: @tag.errors, status: :unprocessable_entity }
        format.js { render :action => "create_error" }
      end
    end
  end

  # PUT /tags/1
  # PUT /tags/1.json
  def update
    @tag = Tag.find(params[:id])

    respond_to do |format|
      if @tag.update_attributes(params[:tag])
        format.html { redirect_to @tag, notice: 'Tag editada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tags/1
  # DELETE /tags/1.json
  def destroy
    @tag = Tag.find(params[:id])
   
   #Vê se o usuario é dono da tag ou do projeto
    session[:return_to]=nil 

    if (@tag.user_id == current_user.id) or (@tag.project.user_id == current_user.id )
    @tag.destroy

    session[:return_to] ||= request.referer

    respond_to do |format|
       format.html { redirect_to session[:return_to], notice: 'Tag excluida!' }
      format.json { head :no_content }
      format.js  { render :action => "destroy" }
    end
    else
    session[:return_to] ||= request.referer


    respond_to do |format|
      format.html { redirect_to session[:return_to], alert: 'Esta tag nao pertence a voce e voce nao e dono deste projeto!' }
      format.json { head :no_content }
      format.js 
    end
    end

    
  end
end
