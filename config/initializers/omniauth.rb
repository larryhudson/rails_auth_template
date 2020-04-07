# frozen_string_literal: true

require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, '0742d56c25a247428967b692fcd79b9c', '1705a7f94b6d4cc9b1fceed25f8068f8', scope: 'user-read-playback-state user-modify-playback-state user-top-read user-read-recently-played '
end
