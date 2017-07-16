# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "to"    => "2",
    "two"   => "2",
    "too"   => "2",
    "for"   => "4",
    "four"  => "4",
    "be"    => "b",
    "you"   => "u",
    "at"    => "@",
    "and"   => "&"
  }
end

def word_substituter str
  str_arr = str.split(" ")
  str_arr.each_with_index do |word, idx|
    if dictionary.keys.include?(word.downcase)
      str_arr[idx] = dictionary[word.downcase]
    end
  end
  str_arr.join(" ")
end

def bulk_tweet_shortener tweet_arr
  tweet_arr.map {|str| puts str = word_substituter(str)}
end

def selective_tweet_shortener tweet
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator tweet
  if selective_tweet_shortener(tweet).length > 140
    tweet[0...137] + '...'
    tweet[0...140]
  else
    selective_tweet_shortener(tweet)
  end
end
