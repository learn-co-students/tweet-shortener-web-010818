=begin
"hello" becomes 'hi'
"to, two, too" become '2'
"for, four" become '4'
'be' becomes 'b'
'you' becomes 'u'
"at" becomes "@"
"and" becomes "&"
=end

require 'pry'

def dictionary
  dictionary =
  {"hello" => "hi",
   "to" => "2",
   "two" => "2",
   "too" => "2",
   "for" => "4",
   "four" => "4",
   "be" => "b",
   "you" => "u",
   "at" => "@",
   "and" => "&"}
end



def word_substituter(tweet)

  array = tweet.split()

  array.each do |word|
    if dictionary.include?(word.downcase)
      array[array.index(word)] = dictionary[word.downcase]
    else
      word
    end
  end
  array.join(' ')
end



def bulk_tweet_shortener(array_tweets)
  array_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)

    if tweet.length > 140
      word_substituter(tweet)
    else
      tweet
    end
end

def shortened_tweet_truncator(long_tweet)
  tweet = selective_tweet_shortener(long_tweet)


  if tweet.length >= 140
    tweet = tweet[0..136] + "..."

  else
    tweet
  end
end
