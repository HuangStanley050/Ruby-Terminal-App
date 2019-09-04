---
Date: 2019-09-04
title: Status update for building the terminal app
update: 2
---

## Running and using testing library Rspec

> Have not used any testing tool beside manual testing, trying out automated testing
> using Rspec

- First test for checking if the api calls return a value

```ruby
describe 'Testing for external API call' do
  it 'should returns a string' do
    test_string = get_joke
    expect(test_string).to be_a(String)
  end
end
```

> the **test_string** value returned by **get_joke** should be a type of string as expected return value

- Second test for checking if the function actually makes a folder and able to save file in there

```ruby
describe 'Testing for creating/appending a file to a named folder' do
  it 'current directory should contain a folder named "chuck_norris_jokes" and has a file inside' do
    saveJoke
    expect(File.directory?('chuck_norris_jokes')).to be true
    is_directory_empty = Dir.empty?('chuck_norris_jokes')
    expect(is_directory_empty).to be false
  end
end
```

> the **first expectation** checking if a directory exists after **saveJoke** function has been exectuted

> the **second expectation** checking if the directory is empty or not after **saveJoke** that is hould not be empty
