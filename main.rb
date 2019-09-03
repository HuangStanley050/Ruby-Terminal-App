# frozen_string_literal: true

require_relative 'displayTitle.rb'
require_relative 'printMenu.rb'
require_relative 'getUserInput.rb'
require_relative 'getJoke.rb'
require_relative 'saveJoke.rb'
require_relative 'getArgs.rb'

userInput = nil
displayTitle

if !ARGV.empty?
  get_arguments
else
  while userInput != 3

    displayMenu
    userInput = getUserInput

    case userInput
    when 1
      # do api call to get one random joke
      # puts 'get joke'
      puts get_joke
    when 2
      # do api call and then save to a file in current directory
      saveJoke
    when 3
      puts 'GoodBye, thank you for using the app'
    end

  end

end
