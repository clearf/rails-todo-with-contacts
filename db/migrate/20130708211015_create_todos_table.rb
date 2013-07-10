class CreateTodosTable < ActiveRecord::Migration
  def up
    create_table :todos do |t|
      t.string :name
      t.string :note
      t.timestamps
    end
  end

  def down
    drop_table :todos
  end
end
