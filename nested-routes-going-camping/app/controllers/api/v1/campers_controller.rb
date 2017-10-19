require 'active_model_serializers'
class Api::V1::CampersController < ApplicationController
  def index
    render json: Camper.all
  end
end
