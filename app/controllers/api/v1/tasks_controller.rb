class Api::V1::TasksController < ApplicationController

  def index
    # byebug
    tasks = Task.all 
    render json: tasks
  end

  def create
    # byebug
    app = Application.find_by(adopter_id: params[:adopter_id])
    task_to_update = Task.find_by(id: params[:id])
    current_category = params[:category]
    new_category = case current_category
      when "initial_review"
        "references"
      when "references"
        "home_visit"
      when "home_visit"
        "final_approval"
    end
    task_to_update.update(complete: true)
    new_task = Task.new(adopter_id: params[:adopter_id], category: new_category)
    app.update("#{current_category}" => true)
 
    if new_task.save
      render json: {newTask: new_task, updatedTask: task_to_update, updatedApplication: app}
    else
      render json: {errors: "Something went wrong"}
    end
  end

  def update
    # byebug
    app = Application.find_by(adopter_id: params[:adopter_id])
    task_to_update = Task.find_by(id: params[:id])
    current_category = params[:category]

    task_to_update.update(complete: true)
    app.update("#{current_category}" => true)
    
    render json: {updatedTask: task_to_update, updatedApplication: app}

  end

  # private
  # def task_params
  #   params.require(:task).permit(:completed)
  # end

end
