class ContactsController < ApplicationController

def index

end

def new
  @contact = ContactForm.new
  @group = Group::GROUPKIND
end

def create
  @contact = ContactForm.new(contact_params)

  if @contact.valid?

    @contact.save
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
params.require(:contact_form).permit(:first_name, :last_name, :phone, :name )
end

end
