# frozen_string_literal: true

require 'tty'

def displayTitle
  font = TTY::Font.new(:doom)

  puts font.write('Chuck Norris Jokes', letter_spacing: 2)
end
