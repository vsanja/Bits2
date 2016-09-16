class Tweet
  def post( success , error )
    if authenticate?(@user,
                     @password)
      success.call
    else
      error.call
    end
  end
end

tweet = Tweet.new('Ruby Bits!')
success = -> { puts "Sent!" }
error = -> { raise 'Auth Error' }
tweet.post(success , error)