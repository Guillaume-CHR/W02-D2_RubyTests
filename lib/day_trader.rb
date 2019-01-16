#****************************************************************************
# RUBY - Trader
#****************************************************************************
#   Ruby's Program - day_trader
#   Written by: Guillaume CHRISTE
#   Date: 16-Jan-2018
#   
#   Description:
#     - Find the max delta between each element of an array and return their position
#     - return '#{tbl} is not an array if the entry is not an array'
#****************************************************************************
def day_trader(tbl)
  #Initiate a table with delta, position min & position max  
  _max = [0,nil,nil]
  if tbl == tbl.to_a
    #for each element (0 to end of table - 1)
    for i in (0..tbl.size-2)
      for j in (i+1..tbl.size-1)
        if (tbl[j]-tbl[i]>0) && (tbl[j]-tbl[i] > _max[0])
          _max = [tbl[j]-tbl[i], i, j]
        end
      end
    end
    if _max == = [0,nil,nil]
      return "No day is suitable to buy (only decreasing values or blank operation)" 
    else
      return [_max[1]+1,_max[2]+1]
    end
  else
    return "#{tbl} is not an array"
  end
end
# End of day_trader ..........................................................
#.............................................................................
#.............................................................................