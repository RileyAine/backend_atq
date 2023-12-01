# https://guides.rubyonrails.org/api_app.html
class Api::V1::QueersController < ApplicationController
    before_action :set_queer, only: %i[ show update destroy ]

    # GET api/v1/queers#index
    def index
        @queers = Queer.all
        
        render json: @queers
    end
    
    # POST api/v1/queers#create
    def create
      @queer = Queer.new(queer_params)
    
      if @queer.save
        render json: @queer, status: :created, location: @queer
      else
        render json: @queer.errors, status: :unprocessable_entity
      end
    end
    
    # GET api/v1/queers/:id#show
    def show
      render json: @queer
    end
    
    # PATCH/PUT api/v1/queers/:id#update
    def update
      if @queer.update(queer_params)
        render json: @queer
      else
        render json: @queer.errors, status: :unprocessable_entity
      end
    end
    
    # DELETE api/v1/queers:id#destroy
    def destroy
      @queer.destroy
    end







  private
    # Use callbacks to share common setup or constraints between actions.
    def set_queer
      @queer = Queer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def queer_params
      params.require(:queer).permit(:name)
    end
    
end
