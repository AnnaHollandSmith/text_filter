def filter(word)
  exceptions = {  'colour-d' => 'coloured',
                  'evergr--n' => 'evergreen',
                  'bl--s' => 'blues',
                  'cover-d' => 'covered',
                  'gr--nbelt' => 'greenbelt'}

    word.gsub(/red/i, 'r-d').gsub(/blue/i, 'bl--').gsub(/green/i, 'gr--n')
    .gsub(/yellow/i, 'y-ll-w').gsub(/coloured|cover-d|evergr--n|bl--s|gr--nbelt/i, exceptions )
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
