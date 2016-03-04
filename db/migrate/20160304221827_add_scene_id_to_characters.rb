class AddSceneIdToCharacters < ActiveRecord::Migration
  def change
    add_reference :characters, :scene, index: true, foreign_key: true
  end
end
