def tweet_as(user , &block )
  tweet = Tweet.new(user)
  tweet.instance_eval(&block)
  tweet. submit_to_twitter
end

tweet_as 'markkendall' do
  mention 'codeschool'
  text 'I made a DSL!'
  hashtag 'hooray'
  hashtag 'ruby'
  link 'http://codeschool.com'
end

