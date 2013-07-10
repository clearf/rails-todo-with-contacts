class CreateContactsTasksTable < ActiveRecord::Migration
  def up
    create_table :contacts_todos, id: false do |t|
      t.belongs_to :todo
      t.belongs_to  :contact
    end
  end

  def down
    drop_table :contacts_todos
  end
end
