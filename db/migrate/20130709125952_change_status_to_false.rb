class ChangeStatusToFalse < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.boolean :status, default: false
  end

  def down
  end
end
