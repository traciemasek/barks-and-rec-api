class Api::V1::AdoptersController < ApplicationController
  def index
    adopters = Adopter.all 
    render json: adopters
  end
end
