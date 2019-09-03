# frozen_string_literal: true

require_relative 'getJoke.rb'
require_relative 'saveJoke.rb'
require 'colorize'

def get_arguments
  # only do one argument for now, to get a random joke or to write to file of the random joke
  argument = ARGV[0]
  if argument != '-R' && argument != '-W'
    puts 'Invalid argument passed to the app '
    puts "you have typed invalid command: ruby #{$PROGRAM_NAME} #{argument}"
    puts '=================================='
    puts 'Example of usage: '
    puts 'ruby main.rb -W'.yellow
    puts 'ruby main.rb -R'.blue
    puts '=================================='
  end
  puts get_joke if argument == '-R'
  saveJoke if argument == '-W'
end
