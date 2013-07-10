class TodosController < ApplicationController

  def index
    @todos = Todo.all
  end

  def new
  end

  def create
    task = params[:task]
    description = params[:description]
    due_date = params[:due_date]
    todo = Todo.new
    todo.task = task
    todo.description = description
    todo.due_date = due_date
    todo.save
    redirect_to('/todos')
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def edit
    params[:id]
    @todo = Todo.find(params[:id])
    @contacts = Contact.all
  end

  def update
    todo = Todo.find(params[:id])
    contact = Contact.find(params[:contact])
    todo.task = params[:task]
    todo.description = params[:description]
    todo.due_date = params[:due_date]
    todo.completed = params[:completed]
    todo.contacts << contact
    todo.save
    redirect_to("/todos/#{todo.id}")
  end

  def destroy
    todo = Todo.find(params[:id])
    todo.destroy
    redirect_to('/todos')
  end
end