# frozen_string_literal: true

require 'tty'

def displayMenu
  table = TTY::Table.new(['Chuck Norris Joke App'], [['1) Get a random joke'], ['2) Save a random joke to a file'], ['3) Exit ']])
  puts table.render(:ascii)
end
