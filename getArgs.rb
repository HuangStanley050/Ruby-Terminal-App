# frozen_string_literal: true

# this function runs when user inputs the argument from the CLI, either prints out the joke or save a file to local file system
# does "some" validation only accept '-R' and '-W' in the argument, anything else it will prints out the error
require_relative 'getJoke.rb'
require_relative 'saveJoke.rb'
require 'colorize'

def get_arguments
  argument = ARGV[0]
  if argument != '-R' && argument != '-W'
    puts 'Invalid argument passed to the app'.red
    puts "you have typed invalid command: ruby #{$PROGRAM_NAME} #{argument}".colorize(color: :white, background: :red)
    puts '=================================='
    puts 'Example of usage: '
    puts 'ruby main.rb -W'.yellow
    puts 'ruby main.rb -R'.blue
    puts '=================================='
  end
  puts get_joke if argument == '-R'
  puts saveJoke if argument == '-W'
end
