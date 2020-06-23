class GeolocationController < ApplicationController

  def index
  end

  def map
  	@locations = Location.where(type: "Feature").pluck(:geometry).to_json
  end

  def add_polygon
  	location = Location.create(location_params)
  	result = (location.present?) ? "success" : "failed"
  	render json: {result: "success"}
  end

  private

  def location_params
  	params.require(:geolocation).permit!
  end
end
