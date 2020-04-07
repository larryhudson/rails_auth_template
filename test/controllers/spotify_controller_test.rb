require 'test_helper'

class SpotifyControllerTest < ActionDispatch::IntegrationTest
  test "should get callback" do
    get spotify_callback_url
    assert_response :success
  end

end
