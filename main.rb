# frozen_string_literal: true

# main function to run the app if an argument is provided at the CLI the program runs once then quits
# if the argument is not provided user will inside the app with a menu and a loop that runs until user quits
require_relative 'displayTitle.rb'
require_relative 'printMenu.rb'
require_relative 'getUserInput.rb'
require_relative 'getJoke.rb'
require_relative 'saveJoke.rb'
require_relative 'getArgs.rb'

userInput = nil
displayTitle
joke = ''

if !ARGV.empty?
  get_arguments
else
  while userInput != 3

    displayMenu
    puts ''
    puts ''
    puts joke
    userInput = getUserInput

    case userInput
    when 1
      joke = get_joke

    when 2
      saveJoke
      system('clear')
    when 3
      puts 'GoodBye, thank you for using the app'
    end
    end

end
