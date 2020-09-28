class AddLevelToHeros < ActiveRecord::Migration[6.0]
  def change
    add_column :heros, :level , :integer
  end
end
