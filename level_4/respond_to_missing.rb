class Tweet
  ...
      def respond_to _missing ?(method_name)
      method_name =~ /^hash_\w+/ || super
      end
end

tweet = Tweet.new
tweet.method(:hash_ruby )