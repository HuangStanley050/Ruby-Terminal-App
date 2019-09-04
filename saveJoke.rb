# frozen_string_literal: true

# fetches the result from the chuck norris api then create a folder and save the file content
# generate random string plus the date as the file name
require 'httparty'
require 'fileutils'
require 'date'
require_relative 'api.rb'

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

  fileName = randomString + '-' + time + '.chuck'

  Dir.mkdir(directoryName) unless File.exist?(directoryName)

  save_string = 'chuck_norris_jokes/' + fileName

  begin
    File.open(save_string, 'w') do |f|
      f.write(fileContent)
    end
  rescue StandardError
    puts 'Saving to local filesystem has failed, please try again!!'
  end
end
