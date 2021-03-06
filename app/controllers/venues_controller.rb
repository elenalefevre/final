class VenuesController < ApplicationController
    skip_before_action :require_user, only: [:index, :show]
  
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
    @venue = Venue.create(venue_params)
    if @venue.valid?
      redirect_to venues_path, notice: "Cool!"
    else 
      render "new"
    end
  end

  def edit
  	@venue = Venue.find_by(id: params["id"])
  end

  def update
  	venue_params = params.require(:venue).permit(:name)
  	@venue = Venue.find_by(id: params["id"])
  	@venue.update(venue_params)
  	if @movie.valid?
      redirect_to venues_path
    else
      render text: "Failed to update venue"
    end
  end

  def destroy
  	@venue = Venue.find_by(id: params["id"])
  	@venue.destroy
  	redirect_to venues_path
  end

end