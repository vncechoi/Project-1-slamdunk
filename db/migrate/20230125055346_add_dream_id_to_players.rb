class AddDreamIdToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :dream_id, :integer
  end
end
