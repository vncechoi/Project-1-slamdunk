class CreateMoves < ActiveRecord::Migration[5.2]
  def change
    create_table :moves do |t|
      t.text "name"
      t.text "category"
      t.text "position"
      t.text "description"
      t.text "image"
    end
  end
end
