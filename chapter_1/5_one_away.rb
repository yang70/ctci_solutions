# There are three types of edits that can be performed on strings: insert a character,
# remove a character, or replace a character. Given two strings, write a function
# to check if they are one edit (or zero edits) away.

def one_away( str_1, str_2 )
  return false if ( str_1.length - str_2.length ).abs > 1

  result = true

  if str_1.length == str_2.length
    index         = 0
    discrepancies = 0

    while discrepancies < 2 && index < str_1.length
      discrepancies += 1 unless str_1[ index ] == str_2[ index ]

      index += 1
    end

    result = discrepancies < 2 ? true : false
  else
    longest, shortest = nil

    if str_1.length > str_2.length
      longest  = str_1
      shortest = str_2
    else
      longest  = str_2
      shortest = str_1
    end

    index_longest  = 0
    index_shortest = 0
    discrepancies  = 0

    while discrepancies < 2 && index_longest < longest.length
      if longest[ index_longest ] != shortest[ index_shortest ]

        discrepancies += 1

        return false if discrepancies > 1

        if longest[ index_longest ] != shortest[ index_shortest ]
          if longest[ index_longest + 1 ] == shortest[ index_shortest ]
            index_longest += 1
          else
            return false
          end
        else
          index_longest  += 1
          index_shortest += 1
        end
      end
    end

    result = discrepancies < 2 ? true : false
  end

  result
end
