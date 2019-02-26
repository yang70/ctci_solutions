# Implement a method to perform basic string compression using the counts
# of repeated characters. For example, the string aabcccccaaa would become a2b1c5a3.
# If the compressed string would not become smaller than the original string, your
# method should return the original string.  You can assume the string has only 
# uppercase and lowercase letters (a-z).

def string_compress( string )
  string_array = string.split( '' )
  
  current_letter = result = string_array[ 0 ]
  count  = 1
  index  = 1
  
  while index < string_array.length
    comparison_letter = string_array[ index ]
    
    if comparison_letter == current_letter
      count += 1
    else
      result += count.to_s
      
      current_letter = comparison_letter
      
      result += comparison_letter
      
      count = 1
    end
    
    if result.length + 1 >= string.length       
      return string
    end
    
    if index == string_array.length - 1
      result += count.to_s
    end
    
    index += 1
  end
  
  result
end
