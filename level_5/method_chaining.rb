tweet_as 'markkendall' do
  mention 'codeschool'
  text('I made a DSL!').hashtag('hooray').hashtag('ruby')
  link 'http://codeschool.com'
end

def text(str)
  @tweet << str
  self
end

def mention(user)
  @tweet << "@" + user
  self
end

def hashtag(str)
  @tweet << "#" + str
  self
end