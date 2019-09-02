# frozen_string_literal: true

require 'httparty'

CHUCK_NORRIS_URL = 'https://api.chucknorris.io/jokes/random'

def get_joke
  response = HTTParty.get(CHUCK_NORRIS_URL)
  hash = response.parsed_response
  puts hash['value']
end

get_joke
