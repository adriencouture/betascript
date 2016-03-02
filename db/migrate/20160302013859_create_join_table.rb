class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :projects, :tags do |t|
      t.index :project_id
      t.index :tag_id
    end
  end
end
