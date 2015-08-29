# form object to manage form to avoid accepts nested for
class ContactForm 
include ActiveModel::Model
attr_accessor :first_name, :last_name, :name, :phone, :email

  
def save(user_id)
  group = Group.new(name: self.name, user_id: user_id.id)
  contact = Contact.create(first_name: self.first_name, last_name: self.last_name, phone: self.phone, user_id: user_id.id)
  group.contacts << contact 
  group.save

end



end


