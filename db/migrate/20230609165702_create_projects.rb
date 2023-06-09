class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.integer :user_id, null: false, foreign_key: true
      t.string :name
      t.timestamp :due_at
      t.text :description
      t.references :status, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
