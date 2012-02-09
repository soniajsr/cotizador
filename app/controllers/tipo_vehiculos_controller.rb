class TipoVehiculosController < ApplicationController
  # GET /tipo_vehiculos
  # GET /tipo_vehiculos.json
  def index
    @tipo_vehiculos = TipoVehiculo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_vehiculos }
    end
  end

  # GET /tipo_vehiculos/1
  # GET /tipo_vehiculos/1.json
  def show
    @tipo_vehiculo = TipoVehiculo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_vehiculo }
    end
  end

  # GET /tipo_vehiculos/new
  # GET /tipo_vehiculos/new.json
  def new
    @tipo_vehiculo = TipoVehiculo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_vehiculo }
    end
  end

  # GET /tipo_vehiculos/1/edit
  def edit
    @tipo_vehiculo = TipoVehiculo.find(params[:id])
  end

  # POST /tipo_vehiculos
  # POST /tipo_vehiculos.json
  def create
    @tipo_vehiculo = TipoVehiculo.new(params[:tipo_vehiculo])

    respond_to do |format|
      if @tipo_vehiculo.save
        format.html { redirect_to @tipo_vehiculo, notice: 'Tipo vehiculo was successfully created.' }
        format.json { render json: @tipo_vehiculo, status: :created, location: @tipo_vehiculo }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_vehiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_vehiculos/1
  # PUT /tipo_vehiculos/1.json
  def update
    @tipo_vehiculo = TipoVehiculo.find(params[:id])

    respond_to do |format|
      if @tipo_vehiculo.update_attributes(params[:tipo_vehiculo])
        format.html { redirect_to @tipo_vehiculo, notice: 'Tipo vehiculo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_vehiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_vehiculos/1
  # DELETE /tipo_vehiculos/1.json
  def destroy
    @tipo_vehiculo = TipoVehiculo.find(params[:id])
    @tipo_vehiculo.destroy

    respond_to do |format|
      format.html { redirect_to tipo_vehiculos_url }
      format.json { head :no_content }
    end
  end
end
