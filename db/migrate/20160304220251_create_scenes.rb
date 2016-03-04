class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.string :heading
      t.text :action
      t.belongs_to :script, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
