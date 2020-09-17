class CreateHeros < ActiveRecord::Migration[6.0]
  def change
    create_table :heros do |t|
      t.string :main_attribute

      t.timestamps
    end
  end
end
