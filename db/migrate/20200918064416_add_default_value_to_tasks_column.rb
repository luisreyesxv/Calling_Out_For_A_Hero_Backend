class AddDefaultValueToTasksColumn < ActiveRecord::Migration[6.0]
  def up
    change_column :tasks, :completed?, :boolean, default: false
  end
  def down
    change_column :tasks, :completed?, :boolean, default: nil
  end
end
