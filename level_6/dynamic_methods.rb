class Tweet
  def initialize(user)
    @user = user
    @tweet = []
    @annotations = {}
  end

  def submit_to_twitter
    tweet_text = @tweet.join(' ')
    puts "#{@user}: #{tweet_text}"
    puts @annotations.inspect unless @annotations.empty?
  end

  def method_missing(method, *args)
    @annotations[method] = args.join(", ")
  end
end
