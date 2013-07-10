class TodosController < ApplicationController

  def index
    @todos = Todo.all
  end

  def new
    @contacts = Contact.all
  end

  def create
    todo = Todo.new()
    todo.todo = params[:todo]
    todo.notes = params[:notes]

    contact_ids = params[:contact_ids]
    contact_ids.each do |contact_id|
      contact = Contact.find(contact_id)
      todo.contacts << contact
    end

    todo.save
    redirect_to('/todos')
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
    todo.todo = params[:todo]
    todo.notes = params[:notes]

    contact_ids = params[:contact_ids]
    contact_ids.each do |contact_id|
      todo.contacts.each do |todo_contact|
        if todo_contact.id == contact_id
          break
        end
        contact_to_add = Contact.find(contact_id)
        todo.contacts << contact_to_add
      end
    end

    if params[:done] == "true"
      todo.done = true
    else
      todo.done = false
    end
    todo.save
    redirect_to "/todos/#{todo.id}"
  end

  def destroy
    todo = Todo.find(params[:id])
    todo.destroy
    redirect_to '/todos'
  end

end