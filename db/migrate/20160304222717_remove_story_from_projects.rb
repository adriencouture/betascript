class RemoveStoryFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :story, :string
  end
end
