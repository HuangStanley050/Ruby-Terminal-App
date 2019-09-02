# frozen_string_literal: true

require 'httparty'

CHUCK_NORRIS_URL = 'https://api.chucknorris.io/jokes/random'

def get_joke
  response = HTTParty.get(CHUCK_NORRIS_URL)
  puts response.body
end

get_joke
