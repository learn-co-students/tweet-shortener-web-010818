require 'pry'

def dictionary
  {"hello" =>'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "For" =>'4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"}
end

def word_substituter(tweet)

  twt_arr = tweet.split
  twt_arr.each do |str|
    dictionary.each_key do |key|
      str.gsub!(key,dictionary[key]) if str == key
    end
  end
 twt_arr.join(' ')
end

def bulk_tweet_shortener(tweets)

    tweets.collect do |arr|
      twt_arr = arr.split
      twt_arr.each do |str|
        dictionary.each_key do |key|
          str.gsub!(key,dictionary[key]) if str == key || str.capitalize == key.capitalize
        end
      end
     puts twt_arr.join(' ')
    end
end


def selective_tweet_shortener(tweet)

    if tweet.length > 140
      twt_arr = tweet.split
      twt_arr.each do |str|
        dictionary.each_key do |key|
          str.gsub!(key,dictionary[key]) if str == key
        end
      end
        twt_arr.join(' ')
    else
      tweet
    end
end


def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    twt_arr = tweet.split
    twt_arr.each do |str|
      dictionary.each_key do |key|
        str.gsub!(key,dictionary[key]) if str == key
      end
    end
      shrt_twt = twt_arr.join(' ')
        if shrt_twt.length > 140
            newt = shrt_twt[0..136] + "..."
        else
            shrt_twt
          end
  else
    tweet
  end
  

end
