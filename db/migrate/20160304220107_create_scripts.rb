class CreateScripts < ActiveRecord::Migration
  def change
    create_table :scripts do |t|
      t.belongs_to :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
