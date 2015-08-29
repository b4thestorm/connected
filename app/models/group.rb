class Group < ActiveRecord::Base
  has_many :contacts
  belongs_to :user

  GROUPKIND = [ 'Family', 'Business', 'Friend']

  def self.find_group(type)
    group_type = self.where(name: type)
    contact = group_type.map{|x| x.contacts}
  end 
  

end
