# frozen_string_literal: true

require_relative 'displayTitle.rb'
require_relative 'printMenu.rb'
require_relative 'getUserInput.rb'
require_relative 'getJoke.rb'

userInput = nil
displayTitle

while userInput != 3

  displayMenu
  userInput = getUserInput

  case userInput
  when 1
    # do api call to get one random joke
    # puts 'get joke'
    get_joke
  when 2
    # do api call and then save to a file in current directory
    puts 'save joke to a file'
  when 3
    puts 'GoodBye, thank you for using the app'
  end

end
