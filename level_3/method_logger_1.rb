class Tweet
  def say_hi
    puts "Hi"
  end
end

logger = MethodLogger.new
logger.log_method(Tweet, :say_hi)

Tweet.new.say_hi