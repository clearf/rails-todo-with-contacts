class Contact < ActiveRecord::Base
  has_and_belongs_to_many :todos
end
