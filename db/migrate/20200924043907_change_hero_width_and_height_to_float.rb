class ChangeHeroWidthAndHeightToFloat < ActiveRecord::Migration[6.0]
  def change
    change_column :heros, :width, :float
    change_column :heros, :height, :float
  end
end
