# frozen_string_literal: true

# Prints out a menu depicting user selection of the app in a table form
require 'tty'

def displayMenu
  table = TTY::Table.new(['Chuck Norris Joke App'], [['1) Get a random joke'], ['2) Save a random joke to a file'], ['3) Exit ']])
  puts table.render(:ascii)
end
