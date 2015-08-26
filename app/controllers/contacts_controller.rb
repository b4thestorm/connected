class ContactsController < ApplicationController

def index

end

def new
  @contact = Contact.new
end

def create
  @contact = Contact.new(contact_params)

  if @contact.save
    flash[:notice] = "Your contact has been saved"
    redirect_to contacts_path 
  else
    flash[:notice] = "You're request to save has failed"
    render new
  end

end

def edit

end

def show

end 

def update

end

def destroy

end

private

def contact_params
params.require(:contact).permit(:first_name, :last_name, :phone)
end

end
