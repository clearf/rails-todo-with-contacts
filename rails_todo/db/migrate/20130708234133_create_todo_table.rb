class CreateTodoTable < ActiveRecord::Migration
  def up
    create_table :todos do |t|
      t.string :task
      t.text :task_description

      t.timestamps
    end
  end

  def down
    drop_table :todos
  end
end
