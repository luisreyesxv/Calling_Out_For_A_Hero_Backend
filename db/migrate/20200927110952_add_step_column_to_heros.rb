class AddStepColumnToHeros < ActiveRecord::Migration[6.0]
  def change
    add_column :heros, :steps , :integer

  end
end
