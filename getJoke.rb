# frozen_string_literal: true

# Reaches out to external API to get a random Joke
# displays a loading bar while we are fetching the result from TTY gem
require 'httparty'
require 'tty'
require 'colorize'
require_relative 'api.rb'
require_relative 'defaultJokes.rb'
require 'pry'

def fallbackJoke; end

def get_joke
  response = nil
  httpStatus = nil
  hash = nil

  bar = TTY::ProgressBar.new('Fetching joke.. [:bar]', total: 50)

  until httpStatus
    begin
      response = HTTParty.get(CHUCK_NORRIS_URL)
      raise if response['status'] == 404
      # lesson learned HTTParty doesn't throw error so we have to manually handle it
    rescue StandardError => e
      puts 'Unable to fetch from API'
      puts 'this is a default joke'

      return fallback_jokes.red
    end
    httpStatus = response.code
    hash = response.parsed_response
    50.times do
      sleep(0.1)
      bar.advance(1)
    end
  end

  hash['value'].red
end
