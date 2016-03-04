class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.text :dialogue
      t.text :parenthetical
      t.belongs_to :script, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
