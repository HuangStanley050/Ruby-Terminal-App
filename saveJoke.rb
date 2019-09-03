# frozen_string_literal: true

require 'httparty'
require 'fileutils'
require 'uuid'
require 'date'

CHUCK_NORRIS_URL = 'https://api.chucknorris.io/jokes/random'

def saveJoke
  response = nil
  httpStatus = nil
  hash = nil
  directoryName = 'chuck_norris_jokes'
  response = HTTParty.get(CHUCK_NORRIS_URL)
  hash = response.parsed_response

  fileContent = hash['value']

  Dir.mkdir(directoryName) unless File.exist?(directoryName)

  File.open('./chuck_norris_jokes/test2.chuck', 'w') do |f|
    f.write(fileContent)
  end
end
