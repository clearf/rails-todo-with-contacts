class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
  end

  def new

  end

  def create
    contact = Contact.new
    contact.name = params[:name]
    contact.title = params[:title]
    contact.save
    redirect_to '/contacts'
  end

  def show
    @contact = Contact.find(params[:id])

  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    contact = Contact.find(params[:id])
    contact.name = params[:name]
    contact.title = params[:title]
    contact.save
    redirect_to "/contacts/#{@contact.id}"
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
    redirect_to '/contacts'
  end
end