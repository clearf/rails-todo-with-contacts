class CreateContactsTasksTable < ActiveRecord::Migration
  def up
    create_table :contacts_tasks, id: false do |t|
      t.belongs_to :contact
      t.belongs_to :task
    end
  end

  def down
    drop_table :contacts_tasks
  end
end
