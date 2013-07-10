class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :details
      t.string :person
      t.datetime :duedate
      t.boolean :status

      t.timestamps
    end
  end
end
