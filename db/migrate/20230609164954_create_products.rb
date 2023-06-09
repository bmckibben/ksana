class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.references :client, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
