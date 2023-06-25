class PlantsController < ApplicationController
    def index
        plants = Plant.
        render json: plants
    end 
    def show
        plants = Plant.find_by(id: params[:id])
        render json: plants 
    end
    def create
        plants = Plant.create(params.permit(:name, :image, :price))
        render json: plants, status: :created
    end
end
