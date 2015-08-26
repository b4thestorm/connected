# form object to manage form to avoid accepts nested for
class ContactForm 
include ActiveModel::Model
attr_accessor :first_name, :last_name, :name, :phone

  
def save
  binding.pry
  group = Group.new(name: self.name)
  contact = Contact.create(first_name: self.first_name, last_name: self.last_name, phone: self.phone)
  group.contacts << contact 
  group.save
end



end


