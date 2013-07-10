class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @contacts = Contact.all
  end

  def create
    name = params[:name]
    description = params[:description]
    due_date = params[:due_date]
    contact = Contact.find(params[:contact_id])
    todo = Todo.new
    todo.name = name
    todo.description = description
    todo.due_date = due_date
    todo.contacts << contact
    todo.save
    redirect_to '/todos'
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def edit
    @todo = Todo.find(params[:id])
    @contacts = Contact.all
  end

  def update
    todo = Todo.find(params[:id])
    todo.name = params[:name]
    todo.description = params[:description]
    todo.due_date = params[:due_date]
    todo.save
    redirect_to "/todos/#{todo.id}"
  end

  def destroy
    todo = Todo.find(params[:id])
    todo.destroy
    redirect_to '/todos'
  end
end