# frozen_string_literal: true

require 'httparty'
CHUCK_NORRIS_URL = 'https://api.chucknorris.io/jokes/random'

def saveJoke
  response = nil
  httpStatus = nil
  hash = nil

  response = HTTParty.get(CHUCK_NORRIS_URL)
  hash = response.parsed_response

  fileContent = hash['value']

  File.open('test.chuck', 'w') do |f|
    f.write(fileContent)
  end
end
