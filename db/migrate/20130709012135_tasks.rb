class Tasks < ActiveRecord::Migration
  def up
  	create_table :tasks do |t|
  		t.string :todo
  		t.string :description
  		t.string :due
  		t.boolean :urgent, default: false
  		t.timestamps
  	end
  end

  def down
  	drop_table :tasks
  end
end
