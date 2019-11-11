class Api::V1::ApplicationsController < ApplicationController

  def index
    applications = Application.all 
    render json: applications
  end

  def create
    # byebug
    application = Application.create(application_params)
    if application.valid?
      initial_review_task = Task.create(adopter_id: params[:adopter_id], category: "initial_review")

      ActionCable.server.broadcast('task_channel', {task: initial_review_task})
 
      render json: {application: application, tasks: [initial_review_task]}
    else
      render json: {errors: application.errors.full_messages}
    end
  end

  # def update
  #   # byebug
  #   updatedApplication = Application.find(id: params[:id])
  #   updatedApplication.update(application_params)
  # end

  private 
  def application_params
    params.require(:application).permit(:adopter_id, :first_name, :last_name, :why_adopt)
  end
end
