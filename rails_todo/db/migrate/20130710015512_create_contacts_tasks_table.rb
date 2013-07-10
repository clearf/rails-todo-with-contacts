class CreateContactsTasksTable < ActiveRecord::Migration
  def up
    create_table :contacts_tasks do |t|
      t.belongs_to :contact
      t.belongs_to :task
      t.timestamps
    end
  end

  def down
    drop_table :contacts_tasks
  end
end
