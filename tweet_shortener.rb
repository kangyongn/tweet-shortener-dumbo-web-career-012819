def dictionary
  substitute = {
    "and" => "&",
    "at" => "@",
    "be" => "b",
    "for" => "4",
    "four" => "4",
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "you" => "u"
  }
end

def word_substituter (string)
  arr = string.split(" ")
  dict = dictionary.keys
  

  arr.each_with_index do |word, index|
    dict.each do |key|
      arr[index] = dictionary[key] if word.downcase == key
    end
  end
  
  arr.join(" ")
end

def bulk_tweet_shortener (array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener (string)
  if string.length <= 140
    return string
  else
    word_substituter(string)
  end
end