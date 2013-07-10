class Todo < ActiveRecord::Base
  has_and_belongs_to_many :contacts
  attr_accessible :name, :description, :due_date
end