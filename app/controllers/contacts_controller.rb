class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
  end

  def new
    name = params[:name]
    task_id = params[:task_id]
    @task = Task.all
  end

  def create
    name = params[:name]
    contact = Contact.new
    contact.name = name
    contact.save
    #Assign this contact to an existing task
    task = Task.find(params[:task])
    task.contacts << contact
    task.save
    redirect_to('/contacts')
  end

  def edit
    @contact = Contact.find(params[:id])
    name = params[:name]
  end

  def update
    contact = Contact.find(params[:id])
    contact.name = params[:name]
    contact.save
    redirect_to "/contacts/#{contact.id}"
  end



  def show
    @contact = Contact.find(params[:id])
  end

end