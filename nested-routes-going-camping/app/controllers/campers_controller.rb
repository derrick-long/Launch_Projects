class CampersController < ApplicationController

  def index
    if params[:campsite_id].nil?
        @title = "All Campers:"
      @campers = Camper.all
    else
      @camp = Campsite.find(params[:campsite_id])
      @campers = @camp.campers
      @title = "Campers bunking in #{@camp.name}"
    end
  end


end
