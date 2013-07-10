class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @contacts = Contact.all
  end

  def edit
    @task = Todo.find(params[:id])
    @contacts = Contact.all
  end

  def show
    @task = Todo.find(params[:id])
  end

  def create
    new_task = Todo.new
    new_task.name = params[:name]
    new_task.note = params[:note]
    new_task.contacts << Contact.find(params[:contact])

    new_task.save
    redirect_to('/todos')
  end

  def destroy
    task_to_delete = Todo.find(params[:id])
    task_to_delete.destroy
    redirect_to('/todos')
  end

  def update
    task_to_edit = Todo.find(params[:id])
    task_to_edit.name = params[:name]
    task_to_edit.note = params[:note]

    unless task_to_edit.contacts.map(&:id).include?(params[:contact].to_i)
      task_to_edit.contacts << Contact.find(params[:contact])
    end

    task_to_edit.save
    redirect_to("/todos/#{params[:id]}")
  end

end
