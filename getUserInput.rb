# frozen_string_literal: true

require 'tty'

def getUserInput
  prompt = TTY::Prompt.new
  choices = { "Get a random Joke": 1, "Save random joke to a file": 2, "Select a category of joke": 3, "Exit": 4 }
  prompt.enum_select('Select an editor?', choices)
end
