class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
  end

  def create
    task = Task.new
    task.name = params[:name]
    task.details = params[:details]
    task.person = params[:person]
    task.duedate = params[:duedate].strftime("%Y-%d-%m")
    task.status = params[:status]
    task.save
    redirect_to "/tasks/#{task.id}"
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.name = params[:name]
    task.details = params[:details]
    task.person = params[:person]
    task.duedate = params[:duedate]
    task.status = params[:status]
    task.save
    redirect_to "/tasks/#{task.id}"
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to "/tasks"
  end

end
