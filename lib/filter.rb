
def filter(word)
    word.gsub(/red|/i, 'r-d').gsub(/blue/i, 'bl--').gsub(/green/i, 'gr--n').gsub(/yellow/i, 'y-ll-w')
    .gsub(/cover-d/i, 'covered').gsub(/colour-d/i, 'coloured').gsub(/evergr--n/i, 'evergreen').gsub(/gr--nbelt/i, 'greenbelt').gsub(/bl--s/i, 'blues')

end

# Original syntax prior to edgecase was:
#
# def filter(word)
#   sanitised_word = {  'red' => 'r-d',
#                       'green' => 'gr--n',
#                       'blue' => 'bl--',
#                       'yellow' => 'y-ll-w',
#                       'coloured' => 'coloured',
#                       'evergreen' => 'evergreen',
#                       'blues' => 'blues',
#                       'covered' => 'covered',
#                       'greenbelt' => 'greenbelt'}
# word.gsub(/red|greenbelt|green|blues|blue|yellow|coloured|evergreen|covered|greenbelt/i, sanitised_word)
#
#
# end
