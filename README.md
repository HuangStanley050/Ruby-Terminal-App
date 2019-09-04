# Chuck Norris Joke Terminal Application

## Getting Started

These instructions will get you up and running on your local machine for development and testing purposes.

### Prerequistes

What things you need to install and how to install them

This app assumes that you have a ruby runtime installed 2.5.1 or above

```
gem install rspec
gem install colorize
gem install httparty
gem install tty

```

# Running the app in development mode

```
ruby main.rb
```

**or** with arguments like

```
ruby main.rb -R
ruby main.rb -W
```

## Main screen

![main_screen](/screenshots/mainScreen.png)

## CLI Options

Get a joke:
![read_mode](/screenshots/cliReadMode.png)

Save a joke to local file system:
![write_mode](/screenshots/cliWriteMode.png)

# Running tests

```
ruby ./test/testChuckNorris.rb

```

### First test

_Testing if the external api returns a result_

```
describe 'Testing for external API call' do
  it 'should returns a string' do
    test_string = get_joke
    expect(test_string).to be_a(String)
  end
end
```

### Second Test

_Testing to see if a file is saved to the folder_

```
describe 'Testing for creating/appending a file to a named folder' do
  it 'current directory should contain a folder named "chuck_norris_jokes" and has a file inside' do
    saveJoke
    expect(File.directory?('chuck_norris_jokes')).to be true
    is_directory_empty = Dir.empty?('chuck_norris_jokes')
    expect(is_directory_empty).to be false
  end
end
```

# Author

- **Stanley Huang**
