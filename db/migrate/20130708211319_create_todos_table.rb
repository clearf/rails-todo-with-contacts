class CreateTodosTable < ActiveRecord::Migration
  def up
    create_table :todos do |t|
      t.string :todo
      t.text :notes
      t.boolean :done, default: FALSE
      t.timestamps
    end
  end

  def down
    drop_table :todos
  end
end
