class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @contacts = Contact.all
  end

  def create
    task = Task.new
    task.name = params[:name]
    task.info = params[:info]
    task.done = params[:done]
    task.contacts << Contact.find(params[:contact])
    task.save

    redirect_to '/tasks'
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
    @contacts = Contact.all
  end

  def update
    task = Task.find(params[:id])
    task.name = params[:name]
    task.info = params[:info]
    task.done = params[:done]

    if task.contacts.include? Contact.find(params[:contact])
        # error message
      else
      task.contacts << Contact.find(params[:contact])
    end

    task.save
    redirect_to "/tasks"
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to "/tasks"
  end

end