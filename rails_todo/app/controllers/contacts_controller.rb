class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def new
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def create
    contact = Contact.new
    contact.name = params[:name]
    contact.save
    redirect_to '/contacts'
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    contact = Contact.find(params[:id])
    contact.name = params[:name]
    contact.save
    redirect_to '/contacts'
  end

  def delete
    contact = Contact.find(params[:id])
    contact.destroy
    redirect_to '/contacts'
  end
end
