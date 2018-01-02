# Write your code here.


def word_substituter(tweet)
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  new_tweet_array = []
  words = tweet.split(" ")
  words.each{|word|
    if dictionary.keys.include?(word.downcase)
      new_tweet_array << dictionary[word.downcase]
    else
      new_tweet_array << word
    end
   }
   new_tweet_array.join(" ")
end

def bulk_tweet_shortener(tweets)
  new_tweets_array = []
  tweets.each{|tweet| new_tweets_array << word_substituter(tweet)}
  new_tweets_array.each{|new_tweet| puts new_tweet}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  new_tweet = selective_tweet_shortener(tweet)
  if new_tweet.length > 140
    new_tweet[0...140]
  else
    new_tweet
  end
end
