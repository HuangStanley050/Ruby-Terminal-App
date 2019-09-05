# frozen_string_literal: true

# fetches the result from the chuck norris api then create a folder and save the file content
# if fetching fails, exit the program gracefully
# generate random string plus the date as the file name
require 'httparty'
require 'fileutils'
require 'date'
require 'tty'
require_relative 'api.rb'

def saveJoke
  response = nil
  httpStatus = nil
  hash = nil
  fileName = ''
  bar = TTY::ProgressBar.new('Saving joke.. [:bar]', total: 50)
  directoryName = 'chuck_norris_jokes'

  50.times do
    sleep(0.1)
    bar.advance(1)
  end

  begin
    response = HTTParty.get(CHUCK_NORRIS_URL)
    hash = response.parsed_response
    fileContent = hash['value']
    raise if response['status'] == 404
  rescue StandardError => e
    puts 'Unable to save file, Chuck Norris is disapponted '
    puts 'Please try again'
    return
  end

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
  rescue Exception
    puts 'Saving to local filesystem has failed, please try again!!'
    return
  end
  system('clear')
  'Joke has been saved.'
end
