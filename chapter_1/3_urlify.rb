# Write a method to replace all spaces in a string with '%20'. You may assume
# that the string has sufficient space at the end to hold the additional characters,
# and that you are given the "true" lenght of the string. 

# Answer 1
def urlify( str )
  str.gsub( " ", "%20" )
end
