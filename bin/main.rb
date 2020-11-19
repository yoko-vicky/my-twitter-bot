#!/usr/bin/env ruby
require 'twitter'
require_relative '../lib/my_tweets.rb'

client = Twitter::REST::Client.new do |config|
  config.consumer_key = ENV['CONSUMER_KEY']
  config.consumer_secret = ENV['CONSUMER_SECRET']
  config.access_token = ENV['ACCESS_TOKEN']
  config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
end

loop do
  mytweets = MyTweets.new
  client.update mytweets.pickup_quote + mytweets.pickup_emoji
  sleep 3600
end
