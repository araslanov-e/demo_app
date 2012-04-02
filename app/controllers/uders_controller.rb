class UdersController < ApplicationController
  # GET /uders
  # GET /uders.json
  def index
    @uders = Uder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @uders }
    end
  end

  # GET /uders/1
  # GET /uders/1.json
  def show
    @uder = Uder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @uder }
    end
  end

  # GET /uders/new
  # GET /uders/new.json
  def new
    @uder = Uder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @uder }
    end
  end

  # GET /uders/1/edit
  def edit
    @uder = Uder.find(params[:id])
  end

  # POST /uders
  # POST /uders.json
  def create
    @uder = Uder.new(params[:uder])

    respond_to do |format|
      if @uder.save
        format.html { redirect_to @uder, notice: 'Uder was successfully created.' }
        format.json { render json: @uder, status: :created, location: @uder }
      else
        format.html { render action: "new" }
        format.json { render json: @uder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /uders/1
  # PUT /uders/1.json
  def update
    @uder = Uder.find(params[:id])

    respond_to do |format|
      if @uder.update_attributes(params[:uder])
        format.html { redirect_to @uder, notice: 'Uder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @uder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uders/1
  # DELETE /uders/1.json
  def destroy
    @uder = Uder.find(params[:id])
    @uder.destroy

    respond_to do |format|
      format.html { redirect_to uders_url }
      format.json { head :no_content }
    end
  end
end
