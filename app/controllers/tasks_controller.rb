class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
  end

  def create
    task = Task.new
    task.todo = params[:todo]
    task.details = params[:details]
    task.due = params[:due]
    task.status = params[:status]

    task.save

    redirect_to("/tasks/#{task.id}")
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])

    task.todo = params[:todo]
    task.details = params[:details]
    task.due = params[:due]
    task.status = params[:status]

    task.save
    redirect_to "/tasks/#{task.id}"
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy

    redirect_to("/tasks")
  end

end
