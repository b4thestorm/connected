class Contact < ActiveRecord::Base
  belongs_to :group 
  belongs_to :user
  has_one :reminder









end
