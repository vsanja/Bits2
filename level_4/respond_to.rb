class Tweet
  ...
      def respond_to?(method_name)
        method_name =~ /^hash_\w+/ || super
      end
end

tweet = Tweet.new
tweet.respond_to?(:hash_ruby)
# => true

tweet.method(:hash_ruby)