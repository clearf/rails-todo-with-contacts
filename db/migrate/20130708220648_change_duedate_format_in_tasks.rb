class ChangeDuedateFormatInTasks < ActiveRecord::Migration
  def change
    change_column :tasks, :duedate, :date
  end
end
