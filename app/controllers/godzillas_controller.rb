class GodzillasController < ApplicationController
  # GET /godzillas
  # GET /godzillas.json
  def index
    @godzillas = Godzilla.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @godzillas }
    end
  end

  # GET /godzillas/1
  # GET /godzillas/1.json
  def show
    @godzilla = Godzilla.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @godzilla }
    end
  end

  # GET /godzillas/new
  # GET /godzillas/new.json
  def new
    @godzilla = Godzilla.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @godzilla }
    end
  end

  # GET /godzillas/1/edit
  def edit
    @godzilla = Godzilla.find(params[:id])
  end

  # POST /godzillas
  # POST /godzillas.json
  def create
    @godzilla = Godzilla.new(params[:godzilla])

    respond_to do |format|
      if @godzilla.save
        format.html { redirect_to @godzilla, notice: 'Godzilla was successfully created.' }
        format.json { render json: @godzilla, status: :created, location: @godzilla }
      else
        format.html { render action: "new" }
        format.json { render json: @godzilla.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /godzillas/1
  # PUT /godzillas/1.json
  def update
    @godzilla = Godzilla.find(params[:id])

    respond_to do |format|
      if @godzilla.update_attributes(params[:godzilla])
        format.html { redirect_to @godzilla, notice: 'Godzilla was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @godzilla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /godzillas/1
  # DELETE /godzillas/1.json
  def destroy
    @godzilla = Godzilla.find(params[:id])
    @godzilla.destroy

    respond_to do |format|
      format.html { redirect_to godzillas_url }
      format.json { head :no_content }
    end
  end
end
