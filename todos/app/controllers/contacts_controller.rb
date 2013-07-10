class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def new
  end

  def create
    name = params[:name]
    phone = params[:phone]
    contact = Contact.new
    contact.name = name
    contact.phone = phone
    contact.save
    redirect_to '/contacts'
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def edit
    @contact = Contact.find(params[:id])
  end
end