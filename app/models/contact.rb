class Contact < ActiveRecord::Base
  has_and_belongs_to_many :tasks, :uniq => true
end
