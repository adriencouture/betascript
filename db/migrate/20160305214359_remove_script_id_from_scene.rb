class RemoveScriptIdFromScene < ActiveRecord::Migration
  def change
    remove_column :scenes, :script_id, :integer
  end
end
