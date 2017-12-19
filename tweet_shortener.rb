def dictionary(word)

  sub = {"hello" =>'hi',
"to" => "2", "two"=>"2", "too"=>'2',
"for"=>"4","four"=>'4', "For" => "4",
'be' => 'b',
'you' => 'u',
"at" =>"@","and" => "&"}

if sub[word] == nil
  word
else
  sub[word]
end

end






def word_substituter(str)
  empty = []
  arr = str.split(" ")
  arr.each do |word|
    empty.push(dictionary(word))
  end
  empty.join(" ")
end


def bulk_tweet_shortener(array)

      array.each do |sentence|
        puts word_substituter(sentence)
      end
    end


    def selective_tweet_shortener(str)
    if str.length< 140
      str
    else
      word_substituter(str)
    end
    end

    def shortened_tweet_truncator(str)
  if str.length<140
    str
  else
    final = word_substituter(str)
    if final.length<140
      final
    else
      final[0..136]+"..."
    end
  end
end
