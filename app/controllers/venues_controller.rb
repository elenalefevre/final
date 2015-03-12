class VenuesController < ApplicationController
  
  def index
  	@venues = Venue.all
  end
  def show
  	@venues = Venue.find_by(id: params["id"])
  end

end