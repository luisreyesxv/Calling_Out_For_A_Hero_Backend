class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :description
      t.date :date
      t.boolean :completed?

      t.timestamps
    end
  end
end
