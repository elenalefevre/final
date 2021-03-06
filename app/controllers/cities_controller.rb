class CitiesController < ApplicationController
  
  def index
  	@cities = City.all
  end

  def show
  	@city = City.find_by(id: params["id"])
    @venues = Venue.where(city_id: @city.id)  
  end

  def new
  	@city = City.new
  end

  def create
  	city_params = params.require(:city).permit(:name)
    @city = City.create(city_params)
    if @city.valid?
      redirect_to cities_path, notice: "Cool!"
    else 
      render "new"
    end
  end

  def edit
  	@city = City.find_by(id: params["id"])
  end

  def update
  	city_params = params.require(:city).permit(:name)
  	@city = City.find_by(id: params["id"])
  	@city.update(city_params)
  	redirect_to cities_path
  end

  def destroy
  	@city = City.find_by(id: params["id"])
  	@city.destroy
  	redirect_to cities_path
  end

end