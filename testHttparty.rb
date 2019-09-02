# frozen_string_literal: true

require 'httparty'
require 'tty'

CHUCK_NORRIS_URL = 'https://api.chucknorris.io/jokes/random'
$bar = TTY::ProgressBar.new('downloading [:bar]', total: 50)

def get_joke
  response = nil
  httpStatus = nil
  hash = nil

  until httpStatus
    response = HTTParty.get(CHUCK_NORRIS_URL)
    httpStatus = response.code
    hash = response.parsed_response
    50.times do
      sleep(0.1)
      $bar.advance(1)
    end
  end

  puts hash['value']
  puts httpStatus
end

get_joke
