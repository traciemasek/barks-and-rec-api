class Api::V1::TasksController < ApplicationController

  def index
    # byebug
    tasks = Task.all 
    render json: tasks
  end
end
