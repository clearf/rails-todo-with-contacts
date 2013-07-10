class CreateTasksPeopleTable < ActiveRecord::Migration
  def up
    create_table :tasks_people do |t|
      t.belongs_to :task
      t.belongs_to :person
      t.timestamps
    end
  end

  def down
    drop_table :tasks_people
  end
end
