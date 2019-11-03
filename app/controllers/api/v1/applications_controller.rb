class Api::V1::ApplicationsController < ApplicationController

  def index
    applications = Application.all 
    render json: applications
  end

  def create
    application = Application.create(application_params)
    if application.valid?
      render json: application
    else
      render json: {errors: application.errors.full_messages}
    end
  end

  private 
  def application_params
    params.require(:application).permit(:adopter_id, :first_name, :last_name, :why_adopt)
  end
end
