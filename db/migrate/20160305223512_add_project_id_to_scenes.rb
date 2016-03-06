class AddProjectIdToScenes < ActiveRecord::Migration
  def change
    add_reference :scenes, :project, index: true, foreign_key: true
  end
end
