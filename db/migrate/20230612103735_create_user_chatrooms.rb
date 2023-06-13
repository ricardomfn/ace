class CreateUserChatrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :user_chatrooms do |t|
      t.references :user, foreign_key: true, null: false
      t.references :chatroom, foreign_key: true, null: false

      t.timestamps
    end
  end
end
