# frozen_string_literal: true

class SpotifyController < ApplicationController
  def search
    @tracks = RSpotify::Track.search(params[:query])
    render :results
  end

  def play_track
    @track = RSpotify::Track.find(params[:track_id])
    @room = Room.find(params[:room_id])
    @room.users.each do |user|
      spotify_user = RSpotify::User.new(user.spotify_hash)
      logger.info spotify_user.to_hash
      player = spotify_user.player
      player.play_track(nil, "spotify:track:#{params[:track_id]}")
    end
    @status = "Now playing #{@track.name}"
    render 'status'
  end
end
