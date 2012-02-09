class RangosController < ApplicationController
  # GET /rangos
  # GET /rangos.json
  def index
    @rangos = Rango.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rangos }
    end
  end

  # GET /rangos/1
  # GET /rangos/1.json
  def show
    @rango = Rango.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rango }
    end
  end

  # GET /rangos/new
  # GET /rangos/new.json
  def new
    @rango = Rango.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rango }
    end
  end

  # GET /rangos/1/edit
  def edit
    @rango = Rango.find(params[:id])
  end

  # POST /rangos
  # POST /rangos.json
  def create
    @rango = Rango.new(params[:rango])

    respond_to do |format|
      if @rango.save
        format.html { redirect_to @rango, notice: 'Rango was successfully created.' }
        format.json { render json: @rango, status: :created, location: @rango }
      else
        format.html { render action: "new" }
        format.json { render json: @rango.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rangos/1
  # PUT /rangos/1.json
  def update
    @rango = Rango.find(params[:id])

    respond_to do |format|
      if @rango.update_attributes(params[:rango])
        format.html { redirect_to @rango, notice: 'Rango was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rango.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rangos/1
  # DELETE /rangos/1.json
  def destroy
    @rango = Rango.find(params[:id])
    @rango.destroy

    respond_to do |format|
      format.html { redirect_to rangos_url }
      format.json { head :no_content }
    end
  end
end
