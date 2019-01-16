#****************************************************************************
# RUBY - Caesar Cipher
#****************************************************************************
#   Ruby's Program - caesar_cipher
#   Written by: Guillaume CHRISTE
# 	Date: 16-Jan-2018
#   
#   Description:
# 		- Convert any ASCII string using letter by letter transformation (ASCII position + iNum)
# 		- return 'not a string if the entry is not a string'
#****************************************************************************
def caesar_cipher(str,iNum)
	#IDEA for improvement, do not use a second string and use each_with_index do |letter,ind|
	
	return "Not a string" if str != str.to_s
	newStr = ""
	#Split string into letters and loop on them
	str.split('').each do |letter|
		#if there is a space, we keep it
		if letter == " "
			letter = " "
		#else, we get the ACSII position (.ord), add the iNum (+iNum) 
		#and convert it back into letter (.chr)
		else 
			letter = (letter.ord + iNum).chr
		end
		#We increment the newStr with the letter
		newStr += letter
	end
	return newStr
end
# End of caesar_cipher .......................................................
#.............................................................................
#.............................................................................