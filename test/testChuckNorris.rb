# frozen_string_literal: true

# Test for two features in the app
require 'rspec/autorun'
require_relative '../getJoke'
require_relative '../saveJoke'

describe 'Testing for external API call' do
  it 'should returns a string' do
    test_string = get_joke
    expect(test_string).to be_a(String)
  end
end

describe 'Testing for creating/appending a file to a named folder' do
  it 'current directory should contain a folder named "chuck_norris_jokes" and has a file inside' do
    saveJoke
    expect(File.directory?('chuck_norris_jokes')).to be true
    is_directory_empty = Dir.empty?('chuck_norris_jokes')
    expect(is_directory_empty).to be false
  end
end
