# frozen_string_literal: true

# Function asking user for input choices
# The input selection is fixed based on the TTY gem setup
require 'tty'

def getUserInput
  prompt = TTY::Prompt.new
  choices = { "Get a random Joke": 1, "Save random joke to a file": 2, "Exit": 3 }
  prompt.enum_select('Select an option?', choices)
end
