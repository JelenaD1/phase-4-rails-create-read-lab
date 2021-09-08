class PlantsController < ApplicationController

    def index
        plants = Plant.all 
        render json: plants
    end 

    def show
        plants = Plant.find(params[:id])
        render json: plants
    end 

    def create
        bird = Plant.create(plant_params)
        render json: bird, status: :created
    end

    def plant_params
        params.permit(:name, :image, :price)
    end 

    

    
end
