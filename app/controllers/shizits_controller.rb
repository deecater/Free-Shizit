class ShizitsController < ApplicationController
  # GET /shizits
  # GET /shizits.json
  def index
    @shizits = Shizit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shizits }
    end
  end

  # GET /shizits/1
  # GET /shizits/1.json
  def show
    @shizit = Shizit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shizit }
    end
  end

  # GET /shizits/new
  # GET /shizits/new.json
  def new
    @shizit = Shizit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shizit }
    end
  end

  # GET /shizits/1/edit
  def edit
    @shizit = Shizit.find(params[:id])
  end

  # POST /shizits
  # POST /shizits.json
  def create
    @shizit = Shizit.new(params[:shizit])

    respond_to do |format|
      if @shizit.save
        format.html { redirect_to @shizit, notice: 'Shizit was successfully created.' }
        format.json { render json: @shizit, status: :created, location: @shizit }
      else
        format.html { render action: "new" }
        format.json { render json: @shizit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shizits/1
  # PUT /shizits/1.json
  def update
    @shizit = Shizit.find(params[:id])

    respond_to do |format|
      if @shizit.update_attributes(params[:shizit])
        format.html { redirect_to @shizit, notice: 'Shizit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shizit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shizits/1
  # DELETE /shizits/1.json
  def destroy
    @shizit = Shizit.find(params[:id])
    @shizit.destroy

    respond_to do |format|
      format.html { redirect_to shizits_url }
      format.json { head :no_content }
    end
  end
end
