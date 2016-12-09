class ApplicationController < ActionController::Base

  protect_from_forgery
  include SessionsHelper, GamesHelper

  # Force signout to prevent CSRF attacks
  def handle_unverified_request
    sign_out
    super
  end

  def send_message_to_redis game_id
  	message = { resource: 'new_game',
  	  			    game: game_id
  			      }
	  $redis.publish 'rooms', message.to_json
  end
end