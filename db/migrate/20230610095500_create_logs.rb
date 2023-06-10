class CreateLogs < ActiveRecord::Migration[7.0]
  def change
    drop_table :logs
    create_table :logs do |t|
      t.integer :user_id, null: false, foreign_key: true
      t.timestamp :start_at
      t.timestamp :end_at
      t.text :notes
      t.string :description
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
