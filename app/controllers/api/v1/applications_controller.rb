class Api::V1::ApplicationsController < ApplicationController

  def index
    applications = Application.all 
    render json: applications
  end

  def create
    # byebug
    # Parameters {"adopter_id"=>2, "first_name"=>"Tracie", "last_name"=>"Masek", "why_adopt"=>"Dogs are awesome", "controller"=>"api/v1/applications", "action"=>"create", "application"=>{"adopter_id"=>2, "first_name"=>"Tracie", "last_name"=>"Masek", "why_adopt"=>"Dogs are awesome"}} permitted: false>
    application = Application.create(application_params)
    if application.valid?
      initial_review_task = Task.create(adopter_id: params[:adopter_id], category: "initial_review")
      references_task = Task.create(adopter_id: params[:adopter_id], category: "references")
      home_visit_task = Task.create(adopter_id: params[:adopter_id], category: "home_visit")
      final_approval_task = Task.create(adopter_id: params[:adopter_id], category: "final_approval")
      render json: {application: application, tasks: [initial_review_task, references_task, home_visit_task, final_approval_task]}
    else
      render json: {errors: application.errors.full_messages}
    end
  end

  private 
  def application_params
    params.require(:application).permit(:adopter_id, :first_name, :last_name, :why_adopt)
  end
end
