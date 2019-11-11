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
    # also make new notification and set message accordingly
    notification = Notification.create(adopter_id: params[:adopter_id], message: "Your application status has been updated")
    app.update("#{current_category}" => true)
 
    if new_task.save
      ActionCable.server.broadcast('notification_channel', {updatedApplication: app, notification: notification})

      render json: {newTask: new_task, updatedTask: task_to_update, updatedApplication: app, notification: notification}
    else
      render json: {errors: "Something went wrong"}
    end
  end

  # might want to make this a custom route
  def update
    # byebug
    # for final approval of the task
    app = Application.find_by(adopter_id: params[:adopter_id])
    task_to_update = Task.find_by(id: params[:id])
    current_category = params[:category]

    # create final approval notification
    notification = Notification.create(adopter_id: params[:adopter_id], message: "Your application has been approved!!")

    task_to_update.update(complete: true)
    app.update("#{current_category}" => true)

    # might want to only send a notice otherwise everyone on the channel will see all notifications
    
    ActionCable.server.broadcast('notification_channel', { updatedApplication: app, notification: notification})

    render json: {updatedTask: task_to_update, updatedApplication: app, notification: notification}

  end

  # private
  # def task_params
  #   params.require(:task).permit(:completed)
  # end

end
