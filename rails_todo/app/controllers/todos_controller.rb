class TodosController < ApplicationController

  def index
    @todos = Todo.all
  end

  def new
    @contacts = Contact.all
  end

  def create
    todo = Todo.new
    todo.task = params[:task]
    todo.task_description = params[:task_description]
    todo.contacts << Contact.find(params[:id])
    todo.save
    redirect_to '/todos'
  end

  def show

    @todo = Todo.find(params[:id])

  end

  def edit

    @todo = Todo.find(params[:id])

  end

  def update
    todo = Todo.find(params[:id])
    todo.task = params[:task]
    todo.task_description = params[:task_description]
    todo.save
    redirect_to "/todos/#{todo.id}"
  end

  def destroy
    todo = Todo.find(params[:id])
    todo.destroy
    redirect_to '/todos'
  end



end