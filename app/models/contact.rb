class Contact < ActiveRecord::Base
  has_and_belongs_to_many :todos

  attr_accessible :first_name, :last_name, :title, :phone
end