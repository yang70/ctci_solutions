# Implement and algorithm to determine if a string has all unique characters

def is_unique?( string )
  return false if string.length > 128

  string_index = 0
  string_array = []

  while string_index < string.length
    current_letter_value = string[ string_index ].ord

    return false if string_array[ current_letter_value ]

    string_array[ current_letter_value ] = true

    string_index += 1
  end

  true
end