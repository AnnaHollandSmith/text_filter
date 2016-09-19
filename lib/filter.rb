def filter(word)
  if word !~ /covered|coloured|evergreen|blues|greenbelt/i
    word.gsub(/red/i, 'r-d').gsub(/blue/i, 'bl--').gsub(/green/i, 'gr--n').gsub(/yellow/i, 'y-ll-w')
  else
    word
  end
end


#An alternative syntax for the same method would be:

# def filter(word)
#   if word !~ /covered|coloured|evergreen|blues|greenbelt/i
#     word.gsub(/red|green|blue|yellow/i,'red' => 'r-d', 'green' => 'gr--n', "blue" => "bl--", "yellow" => "y-ll-w")
#   else
#     word
#   end
# end
