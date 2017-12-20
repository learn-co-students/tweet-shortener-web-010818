def dictionary
  dictionary_hash={
    "hello"=>"hi",
    "to"=>"2",
    "two"=>"2",
    "too"=>"2",
    "for"=>"4",
    "four"=>"4",
    "be"=>"b",
    "you"=>"u",
    "at"=>"@",
    "and"=>"&"
  }
end

def word_substituter(tweet)
  tweet.split.collect do |entry|
    if dictionary.keys.include?(entry.downcase)
      entry=dictionary[entry.downcase]
    else
      entry
    end
  end.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if 140<tweet.length
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  tweet2=word_substituter(tweet)
  if tweet2.length>140
    tweet2[0...140]
  else
    tweet2
  end
end
