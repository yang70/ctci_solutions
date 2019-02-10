# Given a string, write a function to check if it is a permutation of a palindrome.
# A palindrome is a word or phrase that is the same forward or backwards.  A
# permutation is a rearrangement of letters.  The palindrome does not need to be
# limited to just dictionary words.

def palindrome_perm?( str )
  letter_hash = {}
  
  str.each_char do | char |
    next if char == " "
    
    if letter_hash[ char ]
      letter_hash[ char ] += 1
    else
      letter_hash[ char ] = 1
    end
  end
  
  odd_found = false
  
  letter_hash.each do | key, val |
    if val.odd? && odd_found
      return true
    elsif val.odd?
      odd_found = true
    end
  end
  
  true
end