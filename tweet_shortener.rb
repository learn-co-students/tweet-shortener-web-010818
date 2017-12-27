# Write your code here.
def dictionary
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
end

def word_substituter(tweet)
  original_tweet_array = tweet.split
  dictionary
  words_to_sub = dictionary.keys
  new_tweet_array = original_tweet_array
  original_tweet_array.each do |word_in_tweet|
    index = original_tweet_array.index(word_in_tweet)
    words_to_sub.each do |long_word|
      fix_case = word_in_tweet.downcase
      if fix_case == long_word
        new_word = dictionary[long_word]
        new_tweet_array[index] = new_word
      end
    end
  end
  new_tweet = new_tweet_array.join(" ")

end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.size > 140
    shortened_tweet = tweet[0..136]+"..."
    shortened_tweet
  else
    tweet
  end
end
