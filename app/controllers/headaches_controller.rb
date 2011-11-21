class HeadachesController < ApplicationController
  before_filter :authenticate_user!

  # GET /headaches
  # GET /headaches.json
  def index
    # TODO - this should only be enabled for an admin, no user should ever see everyone's headaches
    @headaches = Headache.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @headaches }
    end
  end

  # GET /headaches/1
  # GET /headaches/1.json
  def show
    @headache = Headache.find(params[:id])

    if @headache.nil?
      #TODO - bad id
    end

    if current_user.id != @headache.id
       #TODO - user doesn't have access
    end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @headache }
    end
  end

  # GET /headaches/new
  # GET /headaches/new.json
  def new
    @headache = Headache.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @headache }
    end
  end

  # GET /headaches/1/edit
  def edit
    @headache = Headache.find(params[:id])

    if @headache.nil?
      #TODO - bad id
    end

    if current_user.id != @headache.id
       #TODO - user doesn't have access
    end
  end

  # POST /headaches
  # POST /headaches.json
  def create
    @headache = Headache.new(params[:headache])

    respond_to do |format|
      if @headache.save
        format.html { redirect_to @headache, notice: 'Headache was successfully created.' }
        format.json { render json: @headache, status: :created, location: @headache }
      else
        format.html { render action: "new" }
        format.json { render json: @headache.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /headaches/1
  # PUT /headaches/1.json
  def update
    @headache = Headache.find(params[:id])

    if @headache.nil?
      #TODO - bad id
    end

    if current_user.id != @headache.id
       #TODO - user doesn't have access
    end

    respond_to do |format|
      if @headache.update_attributes(params[:headache])
        format.html { redirect_to @headache, notice: 'Headache was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @headache.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /headaches/1
  # DELETE /headaches/1.json
  def destroy
    @headache = Headache.find(params[:id])

    if @headache.nil?
      #TODO - bad id
    end

    if current_user.id != @headache.id
       #TODO - user doesn't have access
    end

    @headache.destroy

    respond_to do |format|
      format.html { redirect_to headaches_url }
      format.json { head :ok }
    end
  end
end
