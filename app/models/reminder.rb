class Reminder < ActiveRecord::Base
belongs_to :contact

after_create :remind
require 'twilio-ruby'
 

REMINDER_TIME = 2.day



def remind
  @client = Twilio::REST::Client.new(ENV["ACCOUNT_SID"], ENV["AUTH_TOKEN"])  
  @twilio_number = '+19292444226'
  @client.messages.create(
    from: @twilio_number,
    to: User.where(id: self.user_id).phone ,
    body: "Arnold, make sure you don't forget to call #{Contact.where(id: self.contact_id).name } today.
           Please Dude!"
    )
end

def self.when_to_run
  Time.now - REMINDER_TIME
end

handle_asynchronously :remind, :run_at => Proc.new { when_to_run }



end
#object needs to be added 
#time needs to be added 
