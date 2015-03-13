class VenuesController < ApplicationController
  
  def index
  	@venues = Venue.all
  end
  
  def show
  	@venue = Venue.find_by(id: params["id"])
  end

  def new
  	@venue = Venue.new
  end

  def create
  	venue_params = params.require(:venue).permit(:name)
  	Venue.create(venue_params)
  	redirect_to venues_path
  end

  def edit
  	@venue = Venue.find_by(id: params["id"])
  end

  def update
  	venue_params = params.require(:venue).permit(:name)
  	@venue = Venue.find_by(id: params["id"])
  	@venue.update(venue_params)
  	redirect_to venues_path
  end

  def destroy
  	@venue = Venue.find_by(id: params["id"])
  	@venue.destroy
  	redirect_to venues_path
  end

end