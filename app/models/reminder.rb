class Reminder < ActiveRecord::Base
belongs_to :contact


require 'twilio-ruby'


@client = Twilio::REST::Client.new(ENV["ACCOUNT_SID"], ENV["AUTH_TOKEN"])

your_number = '+19292444226'

def self.trigger
  @client.messages.create(
    from: your_number,
    to: other_phone ,
    body: "Arnold, make sure you don't forget to call #{name} today.
           Please!"
    )
end


#create a list to go through
#this list will be the list that will guide the messages that will be sent to you 

end
