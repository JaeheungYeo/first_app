class RestaurantsController < ApplicationController
  def index

    location = params[:location]
    if (location)
      # 계수들 (1km 반경일때)
      latDelta = 0.1570
      lngDelta = 1.1202

      latitude = location[:latitude].to_f
      longitude = location[:longitude].to_f

      latUpper = latitude + latDelta
      latLower = latitude - latDelta
      lngUpper = longitude + lngDelta
      lngLower = longitude - lngDelta

      puts "lat: <#{latLower}, #{latUpper}>, lng: <#{lngUpper}, #{lngLower}>"

      @restaurants = Restaurant.where("latitude > :latLower AND latitude < :latUpper AND longitude > :lngLower AND longitude < :lngUpper",
        {latLower: latLower, latUpper: latUpper, lngLower:lngLower, lngUpper:lngUpper})

    else
      @restaurants = Restaurant.all
    end

    render json: @restaurants
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if (Restaurant.find_by_reference(@restaurant[:reference]))
      render json: true
      return
    end

    if (Restaurant.find_by(name: @restaurant[:name], latitude: @restaurant[:latitude], longitude: @restaurant[:longitude]))
      render json: true
      return
    end

    if @restaurant.save
      render json: true
    else
      render json: false
    end

  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :longitude, :latitude, :rating, :reference, :device_id, :device_description)
  end

end
