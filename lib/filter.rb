def filter(word)
  if word.match(/red|blue|green|yellow/i)
  word.gsub(/[aeiou]/i, '-')
else
  word
end
end
