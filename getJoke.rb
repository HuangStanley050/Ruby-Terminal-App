# frozen_string_literal: true

require 'httparty'
require 'tty'
require 'colorize'

CHUCK_NORRIS_URL = 'https://api.chucknorris.io/jokes/random'

def get_joke
  response = nil
  httpStatus = nil
  hash = nil
  bar = TTY::ProgressBar.new('Fetching joke.. [:bar]', total: 50)

  until httpStatus
    response = HTTParty.get(CHUCK_NORRIS_URL)
    httpStatus = response.code
    hash = response.parsed_response
    50.times do
      sleep(0.1)
      bar.advance(1)
    end
  end

  # puts hash['value']
  # puts httpStatus
  puts hash['value'].red
end

# get_joke