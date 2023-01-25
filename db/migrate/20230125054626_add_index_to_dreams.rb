class AddIndexToDreams < ActiveRecord::Migration[5.2]
  def change
    add_index :dreams, :user_id
  end
end
