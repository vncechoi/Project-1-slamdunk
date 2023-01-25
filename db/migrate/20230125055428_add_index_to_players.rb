class AddIndexToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_index :players, :dream_id
  end
end
