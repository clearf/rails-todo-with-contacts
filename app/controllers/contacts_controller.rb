class ContactsController < ApplicationController
	def index
		@contacts = Contact.all
	end

	def new
	end

	def create
		contact = Contact.new
		contact.name = params[:name]
		contact.email = params[:email]
		contact.phone = params[:phone]
		contact.save
		redirect_to '/contacts'
	end

	def show
		@contact = Contact.find(params[:id])
		@tasks = @contact.tasks
	end

	def edit
		@contact = Contact.find(params[:id])
	end

	def update
		contact = Contact.find(params[:id])
		contact.name = params[:name]
		contact.email = params[:email]
		contact.phone = params[:phone]
		contact.save
		redirect_to '/contacts'
	end

	def destroy
		Contact.find(params[:id]).delete
		redirect_to '/contacts'
	end
end