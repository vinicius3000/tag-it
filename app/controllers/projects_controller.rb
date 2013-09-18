class ProjectsController < ApplicationController
  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
    @tags = Tag.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }
    end
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @tags = Tag.find(:all)
    @project = Project.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project }
    end
  end

  # GET /projects/new
  # GET /projects/new.json
  def new
    @project = Project.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project }
    end
  end

  # GET /projects/1/edit
  def edit
    @project = Project.find(params[:id])
  end

  # POST /projects
  # POST /projects.json

  def create
    session[:return_to]=nil 
    session[:return_to] ||= request.referer


    @project = Project.new(params[:project])

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Projeto criado com sucesso.' }
        format.json { render json: @project, status: :created, location: @project }
      else
        format.html {  redirect_to session[:return_to], alert: 'Envie um video de ate 30MB e com o formato .mp4!' }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /projects/1
  # PUT /projects/1.json
  def update
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to @project, notice: 'Projeto atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project = Project.find(params[:id])

    if (@project.user_id == current_user.id)

    @project.destroy

    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Projeto excluido!' }
      format.json { head :no_content }
    end

    else

      session[:return_to] ||= request.referer

      respond_to do |format|
      format.html { redirect_to session[:return_to], alert: 'Voce nao e o dono deste projeto!' }
      format.json { head :no_content }
      end
    end

  end
end