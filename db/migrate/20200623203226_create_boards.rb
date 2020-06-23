class CreateBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :boards do |t|
      t.string :name
      t.boolean :closed
      t.text :desc
      t.string :color
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
