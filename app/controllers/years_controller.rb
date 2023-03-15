class YearsController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def index
        years = Year.all
        render json:years , status:200
    end

    def show
        year =Year.find_by(id: params[:id])
            if year
                render json: year , status:200
            else
                render json:"This id  manufacturing year Not Found for show"
            end
    end

    def create
            year = Year.create(year_params)
            if year.save
            render json: year, status: 200
            else
                render json:{error: "manufacturing year not created so use all fields"}
            end
    end

    def update
        year =Year.find_by(id: params[:id])
            if year
                 year.update(year_params)
                render json:year , status: 200
            else
                render json:{error:"This id manufacturing year not available for update"}
            end
    end

    def destroy
        year =Year.find_by(id: params[:id])
        if year
        year.destroy
        render json:"This id year Deleted"
        else 
            render json:{error: "This id year Not avialable for delete"}
        end
    end

    def year_params
    params.require(:year).permit(:manufacture)
    end
end
