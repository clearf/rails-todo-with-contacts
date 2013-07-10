class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @contacts = Contact.all
  end


  def create
    new_task = Task.new
    new_task.name = params[:name]
    new_task.description = params[:description]
    unless new_task.contacts.include? (Contact.find(params[:contact_id]))
      new_task.contacts << Contact.find(params[:contact_id])
    end
    new_task.save
    redirect_to '/tasks'
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
    task.description = params[:description]
    task.save
    redirect_to "/tasks/#{task.id}"
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to '/tasks'
  end
end