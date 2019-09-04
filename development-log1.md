---
Date: 2019-09-04
title: Status update for building the terminal app
update: 1
---

## Running into issue with handling exception with rescue

> Initially trying to handle an exception when http GET request fails for API call but for some reason the code within the rescue block never gets executed

**initial code block**

```ruby
begin
    response = HTTParty.get(CHUCK_NORRIS_URL)
  rescue StandardError
    joke_to_return = fallback_jokes.red
  end

```

The code never reaches the rescue, I have tried to change the exception type

```ruby
begin
    response = HTTParty.get(CHUCK_NORRIS_URL)
  rescue
  HTTParty::Exception
    joke_to_return = fallback_jokes.red
  end
```

as well as just use the builtin Exception

```ruby
begin
  response = HTTParty.get(CHUCK_NORRIS_URL)
rescue Exception
  joke_to_return = fallback_jokes.red
end
```

## The solution

After consulting with Harrison and Anhar it was discovered that HTTParty gem doesn't throw any exception if it runs into error hence the rescue block was never reached

what we need to do is to manually handle the error ourselves like below:

**raise if response['status'] == 404**

```ruby
   begin
      response = HTTParty.get(CHUCK_NORRIS_URL)
      raise if response['status'] == 404
      # lesson learned HTTParty doesn't throw error so we have to manually handle it
    rescue StandardError => e
      puts 'Unable to fetch from API'
      puts 'this is a default joke'

      return fallback_jokes.red
    end

```
