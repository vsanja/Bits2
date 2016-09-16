def tweet_as(user)
  @user = user
  @tweet = []
  yield
  # submit_to_twitter
end

def text(str)
  @tweet << str
end
def mention(user)
  @tweet << "@" + user
end
def hashtag(str)
  @tweet << "#" + str
end
def link(str)
  @tweet << str
end

tweet_as 'markkendall' do
  mention 'codeschool'
  text 'I made a DSL!'
  hashtag 'hooray'
  hashtag 'ruby'
  link 'http://codeschool.com'
end