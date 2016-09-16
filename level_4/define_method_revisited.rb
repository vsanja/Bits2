def method_missing(method_name, *args)
  match = method_name.to_s.match(/^hash_(\w+)/)
  if match
    @text << " #" + match[1]
  else
    super
  end
end

tweet.hash_codeschool
tweet.hash_codeschool