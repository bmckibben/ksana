class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.integer :user_id, null: false, foreign_key: true
      t.string :name
      t.references :project, null: false, foreign_key: true
      t.text :notes
      t.references :status, null: false, foreign_key: true

      t.timestamps
    end
  end
end
