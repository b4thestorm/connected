class Group < ActiveRecord::Base
  has_many :contacts
  belongs_to :user

  GROUPKIND = [ 'Family', 'Business', 'Friend']

  

end
