tweet_as 'markkendall' do
  mention 'codeschool', 'envylabs'
  text 'I made a DSL!'
end

def mention(*users)
  users.each do |user|
    @tweet << "@" + user
  end
  self
end