class PlacesController < ApplicationController
  # before_action :authenticate_token except: [:index]

    def index
      places = Place.all

      render :json => places, status: 200
    end


  def update
      place_updated = Place.find(params[:id]).update_attributes(place_params)

      if place_updated
          head 200
      else
          render :json => { error: "Update failed for place" }, status: 400
      end
  end

  def destroy
      place_destroyed = Place.find(params[:id]).destroy

      if place_destroyed
          head 200
      else
          render :json => { error: "Destroy failed for place" }, status: 400
      end
  end


  def create
      place = Place.create(place_params)

      render :json => place, status: 201


  private

  def place_params
      params.require(:place).permit(:name, :address, :lat, :lng, :description, :upvote, :downvote)
  end

end

end
