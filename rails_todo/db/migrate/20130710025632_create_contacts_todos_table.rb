class CreateContactsTodosTable < ActiveRecord::Migration
  def up
    create_table :contacts_todos, :id=> false do |t|
      t.references :contact
      t.references :todo
    end
  end

  def down
    drop_table :contacts_todos
  end
end
