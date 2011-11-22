class CausesController < ApplicationController
  # GET /headaches_cause
  # GET /headaches_cause.json
  def index
    @cause = Cause.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cause }
    end
  end

  # GET /cause/1
  # GET /cause/1.json
  def show
    @cause = Cause.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cause }
    end
  end

  # GET /cause/new
  # GET /cause/new.json
  def new
    @cause = Cause.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cause }
    end
  end

  # GET /cause/1/edit
  def edit
    @cause = Cause.find(params[:id])
  end

  # POST /cause
  # POST /cause.json
  def create
    @cause = Cause.new(params[:cause])

    respond_to do |format|
      if @cause.save
        format.html { redirect_to @cause, notice: 'Cause was successfully created.' }
        format.json { render json: @cause, status: :created, location: @cause }
      else
        format.html { render action: "new" }
        format.json { render json: @cause.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cause/1
  # PUT /cause/1.json
  def update
    @cause = Cause.find(params[:id])

    respond_to do |format|
      if @cause.update_attributes(params[:cause])
        format.html { redirect_to @cause, notice: 'Cause was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @cause.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /headaches_cause/1
  # DELETE /headaches_cause/1.json
  def destroy
    @cause = Cause.find(params[:id])
    @cause.destroy

    respond_to do |format|
      format.html { redirect_to cause_url }
      format.json { head :ok }
    end
  end
end
