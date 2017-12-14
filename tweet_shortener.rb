# Write your code here.
def dictionary
  dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => "@",
    "and" => "&"
  }
 end

# tweet = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
        # {"Hey guys, can anyone teach me how 2 b cool? I really want 2 b the best @ everything, u know what I mean? Tweeting is super fun u guys!!!!"}

def word_substituter(text)
  replaced_tweet = []
  tweet = text.split
  dictionary_keys = dictionary.keys
  replaced = false

  tweet.each_with_index do |word, index|
    dictionary_keys.collect do |key|
      if key.downcase == word.downcase
        replaced_tweet << dictionary[key]
        replaced = true
        break
      elsif key.downcase != word.downcase
        replaced = false
      end

    end
    if  replaced == false
      replaced_tweet << word
    end
  end

  replaced_tweet.join(" ")
end

# word_substituter(tweet)

def bulk_tweet_shortener(array)
  array.collect do |text|
    puts word_substituter(text)
  end
end

def selective_tweet_shortener(text)
  if text.length <= 140
    text
  else
    word_substituter(text)
  end

end

def shortened_tweet_truncator(text)
  if word_substituter(text).length <= 140
    word_substituter(text)
  else
    word_substituter(text)[0...140]
  end
end
