#****************************************************************************
# RUBY - Sum of numbers divisible by 3 or 5
#****************************************************************************
#   Ruby's Program - sum_of_3_or_5_multiples
#   Written by: Guillaume CHRISTE
# 	Date: 15-Jan-2019
#   
#   Description:
# 		- From (iNum - 1) to 0, we sum every number if they can be divided by 3 or 5
# 		- If argument is not a positive integer, we return '#{iNum} is not an integer'
#****************************************************************************
def is_multiple_of_3_or_5?(iNum)
 	(iNum%3 == 0 or iNum%5 == 0) ? true : false
end 

def sum_of_3_or_5_multiples(iNum)
	if (iNum == iNum.to_i && iNum >= 0)
		counter = 0
		iNum = iNum - 1
		while iNum > 0
			(counter += iNum) if is_multiple_of_3_or_5?(iNum)
			iNum -= 1
		end
		return counter
	else
		return "#{iNum} is not an INTEGER!"
	end
end
# End of Program's name
#.............................................................................
#.............................................................................