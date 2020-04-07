# frozen_string_literal: true

class AddSpotifyHashToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :spotify_hash, :hash
  end
end
