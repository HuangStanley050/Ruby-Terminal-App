# frozen_string_literal: true

# Reaches out to external API to get a random Joke
# displays a loading bar while we are fetching the result from TTY gem
require 'httparty'
require 'tty'
require 'colorize'
require_relative 'api.rb'
require_relative 'defaultJokes.rb'

def get_joke
  response = nil
  httpStatus = nil
  hash = nil
  joke_to_return = ''
  bar = TTY::ProgressBar.new('Fetching joke.. [:bar]', total: 50)

  until httpStatus
    begin # handing error if API calls fails
      response = HTTParty.get(CHUCK_NORRIS_URL)
    rescue StandardError
      joke_to_return = fallback_jokes.red
    end
    httpStatus = response.code
    hash = response.parsed_response
    joke_to_return = hash['value'].red
    50.times do
      sleep(0.1)
      bar.advance(1)
    end
  end

  # puts hash['value']
  # puts httpStatus

  joke_to_return
end

# get_joke
