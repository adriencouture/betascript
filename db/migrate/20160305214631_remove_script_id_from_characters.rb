class RemoveScriptIdFromCharacters < ActiveRecord::Migration
  def change
    remove_column :characters, :script_id, :integer
  end
end
