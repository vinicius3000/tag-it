class ProjectparticipantsController < ApplicationController
  # GET /projectparticipants
  # GET /projectparticipants.json
  def index
    @projectparticipants = Projectparticipant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projectparticipants }
    end
  end

  # GET /projectparticipants/1
  # GET /projectparticipants/1.json
  def show
    @projectparticipant = Projectparticipant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @projectparticipant }
    end
  end

  # GET /projectparticipants/new
  # GET /projectparticipants/new.json
  def new
    @projectparticipant = Projectparticipant.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @projectparticipant }
    end
  end

  # GET /projectparticipants/1/edit
  def edit
    @projectparticipant = Projectparticipant.find(params[:id])
  end

  # POST /projectparticipants
  # POST /projectparticipants.json
  def create
    session[:return_to]=nil 
    session[:return_to] ||= request.referer


    @projectparticipant = Projectparticipant.new(params[:projectparticipant])

    respond_to do |format|
      if @projectparticipant.save
        format.html { redirect_to session[:return_to], notice: 'Avaliador adicionado.' }
        format.json { render json: @projectparticipant, status: :created, location: @projectparticipant }
      else
        format.html { redirect_to session[:return_to], alert: 'Avaliador ja adicionado' }
        format.json { render json: @projectparticipant.errors, status: :unprocessable_entity }
      end
    end
  end



  # PUT /projectparticipants/1
  # PUT /projectparticipants/1.json
  def update
    @projectparticipant = Projectparticipant.find(params[:id])

    respond_to do |format|
      if @projectparticipant.update_attributes(params[:projectparticipant])
        format.html { redirect_to @projectparticipant, notice: 'Avaliador Atualizado.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @projectparticipant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projectparticipants/1
  # DELETE /projectparticipants/1.json
  def destroy
    @projectparticipant = Projectparticipant.find(params[:id])
    @projectparticipant.destroy

   
    session[:return_to] ||= request.referer

    respond_to do |format|
       format.html { redirect_to session[:return_to], notice: 'Avaliador removido!' }
      format.json { head :no_content }
    end
  end
end

