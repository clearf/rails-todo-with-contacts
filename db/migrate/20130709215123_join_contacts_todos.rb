class JoinContactsTodos < ActiveRecord::Migration
  def up
    create_table :contacts_todos, :id => false do |t|
      t.integer :contact_id
      t.integer :todo_id
    end
  end

  def down
    drop_table :contacts_todos
  end
end
