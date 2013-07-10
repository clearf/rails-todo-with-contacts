class TodosController < ApplicationController

def index
    @todos = Todo.all
  end

  def new
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def create
    todo = Todo.new
    todo.title = params[:title]
    todo.description = params[:description]
    todo.save
    redirect_to '/todos'
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
  @todo = Todo.find(params[:id])
  @todo.title = params[:title]
  @todo.description = params[:description]
  @todo.save
  redirect_to('/todos')
  end

  def destroy
    todo= Todo.find(params[:id])
    todo.destroy
    redirect_to('/todos')
  end

end
