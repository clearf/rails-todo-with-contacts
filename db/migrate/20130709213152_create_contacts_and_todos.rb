class CreateContactsAndTodos < ActiveRecord::Migration
  def up
    create_table :contacts_todos do |t|
      t.belongs_to :contact
      t.belongs_to :todo
    end
  end

  def down
    drop_table :contacts_todos
  end
end
