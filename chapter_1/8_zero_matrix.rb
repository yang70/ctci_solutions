# Write an algorithm such that if an element in an MxN matrix is 0, it's entire
# row and column are set to 0

def zero_matrix( matrix )
  rows_with_zero    = []
  columns_with_zero = []
  
  matrix.each_with_index do | row, row_number |
    row.each_with_index do | val, column_number |
      if val == 0
        rows_with_zero << row_number unless rows_with_zero.include? row_number
        columns_with_zero << column_number unless columns_with_zero.include? column_number
      end
    end
  end
  
  rows_with_zero.each do | row_index |
    row = matrix[ row_index ]
    
    row.each_with_index do | _val, index |
      row[ index ] = 0
    end
  end
  
  matrix.each do | row |
    columns_with_zero.each do | column_index |
      row[ column_index ] = 0
    end
  end
  
  matrix.each do | row |
    row.each do | val |
      print "#{ val } "
    end
    
    puts ""
  end
  
end