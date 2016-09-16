Tweet = Struct.new(:user, :status)

#same_as
# class Tweet
#   attr_accessor :user, :status
#
#   def initialize(user, status)
#     @user, @status = user, status
#   end
# end

tweet = Tweet.new('Gregg', 'compiling!')
tweet.user # => Gregg
tweet.status # => compiling!