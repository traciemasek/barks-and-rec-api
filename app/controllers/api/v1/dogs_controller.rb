class Api::V1::DogsController < ApplicationController
  def index
    dogs = Dog.all 
    render json: dogs
  end

  def create 
    # byebug
    dog = Dog.create(dog_params)
    if dog.valid?
      render json: dog, status: :created
    else
      render json: {errors: dog.errors.full_messages}, status: :not_acceptable
    end
  end

  def update
    # byebug
    dog = Dog.find_by(id: params[:id])
    if dog.update(dog_params)
      render json: dog, status: :ok
    else
      render json: {errors: dog.errors.full_messages}, status: :not_acceptable
    end
  end

  private
  def dog_params
    params.require(:dog).permit(:name, :breed, :img1, :img2, :img3,
    :size, :age, :adopted, :sex, :color, :about, :houseTrained, :health, :goodHome, :badHome)
  end
end
