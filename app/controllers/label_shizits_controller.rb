class LabelShizitsController < ApplicationController
  # GET /label_shizits
  # GET /label_shizits.json
  def index
    @label_shizits = LabelShizit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @label_shizits }
    end
  end

  # GET /label_shizits/1
  # GET /label_shizits/1.json
  def show
    @label_shizit = LabelShizit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @label_shizit }
    end
  end

  # GET /label_shizits/new
  # GET /label_shizits/new.json
  def new
    @label_shizit = LabelShizit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @label_shizit }
    end
  end

  # GET /label_shizits/1/edit
  def edit
    @label_shizit = LabelShizit.find(params[:id])
  end

  # POST /label_shizits
  # POST /label_shizits.json
  def create
    @label_shizit = LabelShizit.new(params[:label_shizit])

    respond_to do |format|
      if @label_shizit.save
        format.html { redirect_to @label_shizit, notice: 'Label shizit was successfully created.' }
        format.json { render json: @label_shizit, status: :created, location: @label_shizit }
      else
        format.html { render action: "new" }
        format.json { render json: @label_shizit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /label_shizits/1
  # PUT /label_shizits/1.json
  def update
    @label_shizit = LabelShizit.find(params[:id])

    respond_to do |format|
      if @label_shizit.update_attributes(params[:label_shizit])
        format.html { redirect_to @label_shizit, notice: 'Label shizit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @label_shizit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /label_shizits/1
  # DELETE /label_shizits/1.json
  def destroy
    @label_shizit = LabelShizit.find(params[:id])
    @label_shizit.destroy

    respond_to do |format|
      format.html { redirect_to label_shizits_url }
      format.json { head :no_content }
    end
  end
end
