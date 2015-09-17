class RemindersController < ApplicationController

  def create
    contact = Contact.find(params[:contact_id])
    contact.reminder = Reminder.create( 
                          :remind => true, 
                          :user_id => current_user.id, 
                          :repo => params[:contact_id]
                      )
    flash[:notice] = 'Reminder has been set!'
    redirect_to contacts_path
  end

  def index 
    @reminder = Contact.where(user_id: current_user.id)
  end 
  
end
