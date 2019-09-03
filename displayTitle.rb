# frozen_string_literal: true

# Prints out the Title of the app on the terminal
require 'tty'

def displayTitle
  font = TTY::Font.new(:doom)
  puts font.write('Chuck Norris Jokes', letter_spacing: 2)
end
