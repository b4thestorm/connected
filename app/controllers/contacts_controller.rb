class ContactsController < ApplicationController

def index

  if params[:group] == 'Family'
    @contacts = Group.find_group(params[:group])
    elsif params[:group] == 'Business'
    @contacts = Group.find_group(params[:group])
    elsif params[:group] == 'Friends'
    @contacts = Group.find_group(params[:group])
    else
    @contact = Contact.all 
  end

end

def new
  @contact = ContactForm.new
  @group = Group::GROUPKIND
end

def create
  @contact = ContactForm.new(contact_params)

  if @contact.valid?
    @contact.save(current_user)
    flash[:notice] = "Your contact has been saved"
    redirect_to contacts_path 
  else
    flash[:notice] = "You're request to save has failed"
    render new
  end

end

def edit

end

def update

end

def show

end 

def destroy

end

private

def contact_params
params.require(:contact_form).permit(:first_name, :last_name, :phone, :name )
end

def group_params
params.require(:group).permit(:name)
end
end
