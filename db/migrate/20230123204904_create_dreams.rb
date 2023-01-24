class CreateDreams < ActiveRecord::Migration[5.2]
  def change
    create_table :dreams do |t|
      t.text "name"
      t.text "image"
      t.text "avatar"
      t.text "province"
      t.text "color"
    end
  end
end
