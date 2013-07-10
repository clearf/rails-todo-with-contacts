class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def new
  end

  def create
    contact = Contact.new

    contact.name = params[:name]
    contact.save

    redirect_to("/contacts")
  end
end
