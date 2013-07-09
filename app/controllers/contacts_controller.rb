class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
  end

  def new
  end

  def create
    Contact.create(params)
    redirect_to('/contacts')
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    contact = Contact.find(params[:id])
    contact.first_name = params[:first_name]
    contact.last_name = params[:last_name]
    contact.title = params[:title]
    contact.phone = params[:phone]
    contact.save
    redirect_to "/contacts/#{contact.id}"
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
    redirect_to '/contacts'
  end

end