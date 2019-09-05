# frozen_string_literal: true

# Run this function if API fetch fails

def fallback_jokes
  fallbackJokes = [
    'The First rule of Chuck Norris is: you do not talk about Chuck Norris.',
    "Chuck Norris' tears cure cancer. Too bad he has never cried.",
    'Chuck Norris counted to infinity... Twice.',
    'Everybody loves Raymond. Except Chuck Norris',
    'Chuck Norris doesnt wear a watch, HE decides what time it is.'
  ]
  option = rand(0..4)
  fallbackJokes[option]
end
