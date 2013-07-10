class TasksController < ApplicationController

def index
  @tasks = Task.all

end

def new
  task_info = params[:task_info]
  due_date = params[:due_date]
  @contact = Contact.all
end

def create
  task_info = params[:task_info]
  due_date = params[:due_date]
  task = Task.new
  task.task_info = task_info
  task.due_date = due_date
  task.save
  #Assign this task to an existing contact
  contact = Contact.find(params[:contact])
  contact.tasks << task
  contact.save
  redirect_to('/tasks')
end

def edit
  @task = Task.find(params[:id])
  task_info = params[:task_info]
  due_date = params[:due_date]
end

def update
  task = Task.find(params[:id])
  task.task_info = params[:task_info]
  task.due_date = params[:due_date]
  task.save
  redirect_to "/tasks/#{task.id}"
end

def show
  @task = Task.find(params[:id])
 # @contact = Contact.all
end

def destroy
  task = Task.find(params[:id])
  task.destroy
  redirect_to "/tasks"
end

end