class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def new
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def show
    @contact = Contact.find(params[:id])
    @assigned_tasks = Contact.find(params[:id]).todos
  end

  def create
    new_contact = Contact.new
    new_contact.name = params[:name]
    new_contact.title = params[:title]
    new_contact.save
    redirect_to('/contacts')
  end

  def destroy
    contact_to_delete = Contact.find(params[:id])
    contact_to_delete.destroy
    redirect_to('/contacts')
  end

  def update
    contact_to_edit = Contact.find(params[:id])
    contact_to_edit.name = params[:name]
    contact_to_edit.title = params[:title]
    contact_to_edit.save
    redirect_to("/contacts/#{params[:id]}")
  end

end
