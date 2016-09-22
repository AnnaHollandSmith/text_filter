# def filter(word)
#   if word !~ /covered|coloured|evergreen|blues|greenbelt/i
#     word.gsub!(/red/i, 'r-d').gsub(/blue/i, 'bl--').gsub(/green/i, 'gr--n').gsub(/yellow/i, 'y-ll-w')
#     if word =~ /covered|coloured|evergreen|blues|greenbelt/i
#       word.gsub!(/red/i, 'r-d').gsub(/blue/i, 'bl--').gsub(/green/i, 'gr--n').gsub(/yellow/i, 'y-ll-w')
#   else
#     word
#   end
# end


#An alternative syntax for the same method would be:

def filter(word)
  # if word !~ /covered|coloured|evergreen|blues|greenbelt/i
    word.gsub(/red|greenbelt|green|blues|blue|yellow|coloured|evergreen|covered|greenbelt/i,
                                                              'red' => 'r-d',
                                                              'green' => 'gr--n',
                                                              'blue' => 'bl--',
                                                              'yellow' => 'y-ll-w',
                                                              'coloured' => 'coloured',
                                                              'evergreen' => 'evergreen',
                                                              'blues' => 'blues',
                                                              'covered' => 'covered',
                                                              'greenbelt' => 'greenbelt')

  # else
  #   word
  # end
end
