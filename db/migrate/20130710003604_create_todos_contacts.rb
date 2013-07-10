class CreateTodosContacts < ActiveRecord::Migration
  def up
    create_table :contacts_todos, id: false do |t|
      t.belongs_to :contacts
      t.belongs_to :todos
    end
  end

  def down
    drop_table :contacts_todos
  end
end
