# Text Filter

## Task:

Write a function that will take a string as an input, identify whether it contains any items from a list of banned words that aren't listed in the exceptions. The function should return the original string with the vowels of all banned words replaced with dashes "-".  All checking should be case insensitive.



Banned word | Exception 1 | Exception 2 |
---|----|----
red | covered | coloured
green | evergreen | greenbelt
blue | blues |
yellow | |

You can use any programming language you're comfortable with

## Technologies used:

The text filter method has been written in ruby and tested using RSpec.

## Instructions for use:

Clone this repository:
```
https://github.com/AnnaHollandSmith/text_filter
```
Navigate into the appropriate directory:
```
cd text_filter
```
Open IRB (the interactive ruby shell) in the command line"
```
irb
```
within IRB, require in the text filter ruby file contained in the lib folder of the project directory:
```
require './lib/filter'
```
Use the method filter(string) to input a string which will filter the string and make appropriate redactions:
```
filter("red is my favourite colour")
```
## Tests:

To run tests (exit from IRB) you will need to have RSpec installed. If you do not already, you can install this by running:
```
bundle install rspec  
```
The tests can then be run and viewed by running:
```
rspec  
```
