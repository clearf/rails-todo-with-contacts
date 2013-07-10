class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def new
  end

  def create
    name = params[:name]

    contact = Contact.new
    contact.name = name
    contact.save

    redirect_to '/contacts'
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def edit
    @contact = Contact.find(params[:id])
    # @tasks = Task.all
    # @task = Task.find(params[:id])
  end

  def update
    contact = Contact.find(params[:id])
    contact.name = params[:name]
    contact.save
    redirect_to "/contacts/#{contact.id}"
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
    # contact.save
    redirect_to "/contacts"
  end

end