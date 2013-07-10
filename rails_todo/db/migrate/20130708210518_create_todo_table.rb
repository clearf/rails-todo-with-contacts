class CreateTodoTable < ActiveRecord::Migration
  def change
    create_table :todo_tables do |t|
      t.string :task
      t.text :task_description


      t.timestamps
    end
  end
end
