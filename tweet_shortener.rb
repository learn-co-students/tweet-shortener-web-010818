def dictionary
  dictionary = {
    'hello' => 'hi',
    'to' => '2',
    'two' => '2',
    'too' => '2',
    'for' => '4',
    'four' => '4',
    'be' => 'b',
    'you' => 'u',
    'at' => '@',
    'and' => '&'
  }
end

def word_substituter (str)
  dictionary
  arr = str.split(' ')
  short_arr = []

  arr.each do |word|
    if dictionary.include? (word.downcase)
      word_sub = dictionary[word.downcase]
      short_arr.push(word_sub)
    else
      short_arr.push(word)
    end
  end
  short_arr.join(' ')
end

def bulk_tweet_shortener (arr)
  arr.each do |tweet|
    puts word_substituter (tweet)
  end
end

def selective_tweet_shortener (str)
  new_str= ''
  if str.length > 140
    new_str = word_substituter (str)
    if new_str.length < 140
      new_str
    else
      new_str = ''
    end
  else
    new_str = str
  end
end

def shortened_tweet_truncator (str)
  new_str = ''
  if str.length > 140
    new_str = str[0..136] << '...'
  else
    new_str = str
  end
end
