class CreateChosenHeros < ActiveRecord::Migration[6.0]
  def change
    create_table :chosen_heros do |t|
      t.references :user, null: false, foreign_key: true
      t.references :hero, null: false, foreign_key: true
      t.string :name
      t.integer :reputation

      t.timestamps
    end
  end
end
