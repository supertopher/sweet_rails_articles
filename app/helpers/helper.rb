def to_slug(text)
  text.downcase.gsub(/[^a-z1-9]+/, '-').chomp('-')
end
