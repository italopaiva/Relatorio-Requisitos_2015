class VehiclesController < ApplicationController
  
  def index
    @vehicles = Vehicle.all
  end

  def new
    @vehicle = Vehicle.new
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end

  # GET /users/1/edit
  def edit
  end

  def create
    vehicle = Vehicle.new(vehicle_params)
    if vehicle.save
      redirect_to '/vehicles/'+vehicle.id.to_s
    else
      render 'new'
    end
  end


  def update
    respond_to do |format|
      if @vehicle.update(vehicle_params)
        format.html { redirect_to @vehicle, notice: ' O Veículo foi Alterado com sucesso!' }
        format.json { render :show, status: :ok, location: @vehicle }
      else
        format.html { render :edit }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:vehicle_number, :brand, :model, :plaque, :chassi, :status, :responsible)
  end
end
