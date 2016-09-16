class Timeline
  def initialize(tweets)
    @tweets = tweets
  end

  def contents
    @tweets
  end

  private

  def direct_messages
  end
end

tweets = ['Compiling!', 'Bundling...']
timeline = Timeline.new(tweets)

timeline.send(:contents)
timeline.send(:direct_messages)

timeline.public_send("direct_messages")