class Tweet
  def initialize(user)
    @user = user
    @tweet = []
  end
  def submit_to_twitter
    tweet_text = @tweet.join(' ')
    puts "#{@user}: #{tweet_text}"
  end
  def text(str)
    @tweet << str
  end
end

def tweet_as(user)
  tweet = Tweet.new(user)
  yield tweet
  tweet. submit_to_twitter
end