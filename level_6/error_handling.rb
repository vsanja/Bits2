def submit_to_twitter
  tweet_text = @tweet.join(' ')
  if tweet_text.length <= 140
    puts "#{@user}: #{tweet_text}"
    puts @annotations.inspect unless @annotations.empty?
  else
    raise "Your tweet is too long."
  end
end