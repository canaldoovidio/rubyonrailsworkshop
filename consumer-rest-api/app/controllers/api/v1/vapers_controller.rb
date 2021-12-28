class Api::V1::VapersController < ApplicationController
    # GET /vapers
def index
    @vaper = Vaper.all
    render json: @vaper
   end
  # GET  /vaper/:id
  def show
    @vaper = Vaper.find(params[:id])
    render json: @vaper
   end
  # POST /vaper
   def create
    @vaper = Vaper.new(vaper_params)
    if @vaper.save
     render json: @vaper
    else
     render error: { error: 'Unable to create Vaper.' }, status: 400
    end 
   end
  # PUT /vapers/:id
  def update
    @vaper = Vaper.find(params[:id])
    if @vaper
     @vaper.update(vaper_params)
     render json: { message: 'Vaper successfully update. '}, status:200
    else
     render json: { error: 'Unable to update Vaper. '}, status:400
    end 
   end
  # DELETE /vapers/:id
  def destroy
    @vaper = Vaper.find(params[:id])
    if @vaper
     @vaper.destroy
     render json: { message: 'Vaper successfully deleted. '}, status: 200
    else
     render json: { error: 'Unable to delete Vaper. '}, status: 400
    end
   end
  private
  def vaper_params
    params.require(:vaper).permit(:name, :price, :brand, :warranty_time)
   end
end
