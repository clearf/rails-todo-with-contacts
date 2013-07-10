class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @contacts = Contact.all
  end

  def create
    task = Task.new
    task.todo = params[:todo]
    task.details = params[:details]
    task.due = params[:due]
    task.status = params[:status]
    #Create task with contact
    task.contacts << Contact.find(params[:contact])

    task.save
    redirect_to("/tasks/#{task.id}")
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
    @contact = Contact.name
  end

  def update
    task = Task.find(params[:id])

    task.todo = params[:todo]
    task.details = params[:details]
    task.due = params[:due]
    task.status = params[:status]

    task.contacts << Contact.find(params[:contact])

    task.save
    redirect_to "/tasks/#{task.id}"
  end

  def destroy
    task = Task.find(params[:id])

    task.contacts.each do |contact|
      task.destroy
    end

    redirect_to("/tasks")
  end

end
