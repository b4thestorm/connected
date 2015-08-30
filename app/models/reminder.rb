class Reminder < ActiveRecord::Base
require 'twilio-ruby'


accountSID = ENV[ACCOUNT_SID]
authToken = ENV[AUTH_TOKEN]

@client = Twilio::REST::Client.new(accountSID, authToken)

me = '+19292444226'

def self.trigger
  @client.messages.create(
    from: me,
    to: ,
    body: 'Do not forget to call #{phone}, dont let any one miss you anymore. Please!' 
    )
end




end
