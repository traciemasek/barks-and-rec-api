class Api::V1::AdoptersController < ApplicationController

  def index
    adopters = Adopter.all 
    render json: adopters
  end

  def create 
    # byebug
    adopter = Adopter.create(adopter_params)
    if adopter.valid?
      token = JWT.encode({adopter_id: adopter.id}, AUTH_SECRET)
      render json: {adopter: adopter, token: token}, status: :created
    else
      render json: {errors: adopter.errors.full_messages}, status: :not_acceptable
    end
  end

  private
  def adopter_params
    params.require(:adopter).permit(:username, :password)
  end
end
