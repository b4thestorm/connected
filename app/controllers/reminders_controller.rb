class RemindersController < ApplicationController

  def create
    contact = Contact.find(params[:contact_id])
    reminder = Reminder.new(remind: true, user_id: current_user.id)
    contact.reminder = reminder 
    flash[:notice] = 'Reminder has been set!'
    redirect_to contacts_path
  end
  
end
