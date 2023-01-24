class CreateDreamsPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :dreams_players do |t|
      t.integer "dream_id"
      t.integer "player_id"
    end
  end
end
