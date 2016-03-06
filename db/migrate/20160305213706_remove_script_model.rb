class RemoveScriptModel < ActiveRecord::Migration
  def change
    drop_table :scripts 
  end
end
