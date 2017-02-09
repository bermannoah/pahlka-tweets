require 'twitter'
require_relative 'twitter_keys.rb'
require 'pry'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = CONSUMER_KEY
  config.consumer_secret     = CONSUMER_SECRET
  config.access_token        = ACCESS_TOKEN
  config.access_token_secret = ACCESS_TOKEN_SECRET
end

tweets = client.user_timeline('', options)

tweets.each do |tweet|
  if Date.today > Date.parse(tweet.created_at.to_s) && Date.today.prev_day.prev_day < Date.parse(tweet.created_at.to_s)
    client.retweet(tweet) rescue
    puts tweet.text
    if tweet.reply?
      reply_count += 1
    elsif tweet.retweet?
      retweet_count += 1
    else
      tweet_count += 1
    end
  end
end

client.update()