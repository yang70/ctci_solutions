# Given two strings, write a method to decide if one is a permutation of the other

# Answer 1
def permutation?( str_1, str_2 )
  return false if str_1.length != str_2.length

  str_1.split( '' ).sort == str_2.split( '' ).sort
end

# Answer 2
def permutation_2?( str_1, str_2 )
  return false if str_1.length != str_2.length

  count_array = Array.new( 128, 0 )

  str_1.each_char do | char |
    count_array[ char.ord ] += 1
  end

  str_2.each_char do | char |
    count_array[ char.ord ] -= 1

    return false if count_array[ char.ord ] < 0
  end

  true
end