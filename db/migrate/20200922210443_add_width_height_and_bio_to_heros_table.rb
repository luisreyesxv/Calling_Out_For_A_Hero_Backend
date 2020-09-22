class AddWidthHeightAndBioToHerosTable < ActiveRecord::Migration[6.0]
  def change
    add_column :heros, :width , :integer
    add_column :heros, :height , :integer
    change_column :chosen_heros, :reputation, :integer, default: 5
  end
end
