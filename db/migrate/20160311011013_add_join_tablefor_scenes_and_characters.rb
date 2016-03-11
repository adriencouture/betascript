class AddJoinTableforScenesAndCharacters < ActiveRecord::Migration
  def change
    create_join_table :characters, :scenes do |t|
      t.index [:scene_id, :character_id]
      t.index [:character_id, :scene_id]
    end
  end
end
