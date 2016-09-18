def filter(word)
  if word =~ /red|green|blue|yellow/i && word !~ /covered|coloured|evergreen|blues|greenbelt/i
    word.gsub(/red/i, 'r-d').gsub(/blue/i, 'bl--').gsub(/green/i, 'gr--n').gsub(/yellow/i, 'y-ll-w')
  else
    word
  end
end
