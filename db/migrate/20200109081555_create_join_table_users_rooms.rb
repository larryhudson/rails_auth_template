# frozen_string_literal: true

class CreateJoinTableUsersRooms < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :rooms do |t|
      t.index %i[user_id room_id]
      t.index %i[room_id user_id]
    end
  end
end
