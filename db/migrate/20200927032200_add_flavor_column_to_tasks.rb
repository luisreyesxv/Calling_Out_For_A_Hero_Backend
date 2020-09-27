class AddFlavorColumnToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :flavor , :string
  end
end
