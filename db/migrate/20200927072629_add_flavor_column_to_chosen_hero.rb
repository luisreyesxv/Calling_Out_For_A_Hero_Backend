class AddFlavorColumnToChosenHero < ActiveRecord::Migration[6.0]
  def change
    add_column :chosen_heros, :flavor , :string
  end
end
