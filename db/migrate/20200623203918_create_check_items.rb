class CreateCheckItems < ActiveRecord::Migration[6.0]
  def change
    create_table :check_items do |t|
      t.string :name
      t.integer :pos
      t.boolean :completed
      t.references :checklist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
