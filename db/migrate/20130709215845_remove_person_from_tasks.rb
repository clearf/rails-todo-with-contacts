class RemovePersonFromTasks < ActiveRecord::Migration
  def change
    remove_column :tasks, :person
  end
end
