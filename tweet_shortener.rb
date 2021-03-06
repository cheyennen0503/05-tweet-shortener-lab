# Write your code here.
def dictionary
    substitutes = {
        "hello" => "hi",
        "be" => "b",
        "you" => "u",
        "at" => "@",
        "and" => "&",
        "four" => "4",
        "for" => "4",
        "two" => "2",
        "to" => "2",
        "too" => "2"
     }
     
     substitutes
end 



def word_substituter(tweet)
    tweet.split.collect do |letters|
        if dictionary.keys.include?(letters.downcase)
           letters = dictionary[letters.downcase]
        else
           letters
        end
    end.join(" ")
end



 def bulk_tweet_shortener(tweets)
     tweets.each do |tweet|
        puts word_substituter(tweet)
     end
 end
 
 
 
 def selective_tweet_shortener(tweets)
    if tweets.length > 140
          word_substituter(tweets)
     else
          tweets
    end
 end


 def shortened_tweet_truncator(tweet)
    if word_substituter(tweet).length > 140
       word_substituter(tweet)[0..138] + "."
    else
        tweet
    end
 end 
