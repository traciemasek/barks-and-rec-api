class Api::V1::FavoritesController < ApplicationController
  def index
    favorites = Favorite.all 
    render json: favorites
  end

  def create
    # byebug
    favorite = Favorite.create(favorite_params)
    dog = Dog.find_by(id: params[:favorite][:dog_id])
    if favorite.valid?
      # dog = Dog.find_by(id: params[:favorite][:dog_id])
      render json: {favorite: favorite, favoriteDog: dog}, status: :created
    else
      render json: {errors: favorite.errors.full_messages}, status: :not_acceptable
    end

  end

  private
  def favorite_params
    params.require(:favorite).permit(:adopter_id, :dog_id)
  end
end
