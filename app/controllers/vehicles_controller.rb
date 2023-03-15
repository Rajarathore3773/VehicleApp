class VehiclesController < ApplicationController
  skip_before_action :verify_authenticity_token
 
  def index
    vehicles =Vehicle.all

    render json: vehicles, status:200
  end
  
  def show
      vehicle =Vehicle.find_by(id: params[:id])
      if vehicle
       render json: vehicle, status:200
      else 
        render json:{error:"This id vehicle Not Found for show"}
      end
 end

  def create 
    vehicle = Vehicle.create(vehicle_params)
    if vehicle.save
      render json:vehicle , status:200
    else
      render json:{error:"vehicle  data not created  so use all fields"}
    end
  end

def update
  vehicle =Vehicle.find_by(id: params[:id])

  if vehicle 
    vehicle.update(vehicle_params)
    render json:vehicle, status:200
  else
    render json:{error:"Again Update data"}
  end
end

def destroy
  vehicle =Vehicle.find_by(id: params[:id])
   if vehicle
    vehicle.destroy
    render json:"This id vehicle successfully deleted"
  else
    render json:{error:"This id vehicle not avilable for delete "}
  end
end

 private
  def vehicle_params
    params.require(:vehicle).permit(:name,:color, :model,:type_id,:year_id)
  end
end
