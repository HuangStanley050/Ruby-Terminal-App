# frozen_string_literal: true

require_relative 'displayTitle.rb'
require_relative 'printMenu.rb'
require_relative 'getUserInput.rb'

userInput = nil
displayTitle

while userInput != 3

  displayMenu
  userInput = getUserInput
end
