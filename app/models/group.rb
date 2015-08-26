class Group < ActiveRecord::Base
  has_many :contacts

  GROUPKIND = [ 'Family', 'Business', 'Friend']

  

end
