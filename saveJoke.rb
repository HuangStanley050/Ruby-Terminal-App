# frozen_string_literal: true

require 'httparty'
require 'fileutils'

require 'date'

CHUCK_NORRIS_URL = 'https://api.chucknorris.io/jokes/random'

def saveJoke
  response = nil
  httpStatus = nil
  hash = nil
  fileName = ''

  directoryName = 'chuck_norris_jokes'
  response = HTTParty.get(CHUCK_NORRIS_URL)
  hash = response.parsed_response

  fileContent = hash['value']

  d = DateTime.now
  time = d.strftime('%a %d %b %Y')
  randomString = rand(36**20).to_s(36)

  filenName = time
  puts fileName

  Dir.mkdir(directoryName) unless File.exist?(directoryName)

  save_string = 'chuck_norris_jokes/' + fileName

  File.open(save_string, 'w') do |f|
    f.write(fileContent)
  end
end
