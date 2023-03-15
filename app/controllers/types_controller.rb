class TypesController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
            types = Type.all
            render json:types , status: 200
    end
    def show
        type = Type.find_by(id: params[:id])
            if type
            render json:type , status: 200
            else
                render json:{error:"This id type Not available for show "}
            end
    end
    def create
            type = Type.create(type_params)
            if type
            render json:type , status: 200
            else
            render json:{error:"Not created"}
            end
    end
    
    def update
        type = Type.find_by(id: params[:id])

        if type
            type.update(type_params)
            render json:type , status: 200
        else
            render json:{error:"This id types not available for Update"}
        end
    end

    def destroy
          type = Type.find_by(id: params[:id])
            if type
            type.destroy
            render json:"Deleted successfully"
            else
                render json:{error:"This id type Not available for delete" }
            end
    end
    private
    def type_params
        params.require(:type).permit(:wheel,:fuel)
    end
end
