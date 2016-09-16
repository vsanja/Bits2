class Tweet
  def initialize(text)
    @text = text
  end

  def to_s
    @text
  end

  def method_missing(method_name, *args)
    match = method_name.to_s.match(/^hash_(\w+)/)
    if match
      @text << " #" + match[1]
    else
      super
    end
  end
end


tweet = Tweet.new("Sponsored by")
tweet.hash_ruby
tweet.hash_metaprogramming
puts tweet