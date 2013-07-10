class CreateContactsAndTodos < ActiveRecord::Migration
  def up
    create_table :contacts_todos do |t|
      t.belongs_to :contact
      t.belongs_to :todo
    end
    add_index :contacts_todos, [:contact_id, :todo_id], unique: true
  end

  def down
    drop_table :contacts_todos
  end
end
