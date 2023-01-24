class CreateDreamsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :dreams_users do |t|
      t.integer :dream_id
      t.integer :user_id
    end
  end
end