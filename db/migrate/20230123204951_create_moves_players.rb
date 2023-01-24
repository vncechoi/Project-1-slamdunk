class CreateMovesPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :moves_players do |t|
      t.integer "move_id"
      t.integer "player_id"
    end
  end
end
