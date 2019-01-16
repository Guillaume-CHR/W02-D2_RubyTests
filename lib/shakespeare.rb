#****************************************************************************
# RUBY - Count word (Shakespeare)
#****************************************************************************
#   Ruby's Program - shakespeare
#   Written by: Guillaume CHRISTE
#   Date: 16-Jan-2018
#   
#   Description:
#
#****************************************************************************
dictionary1 = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

dictionary2=[]
File.read("lib/swear_words_text.txt").each_line{|line| dictionary2 << line.chomp}

def shakespeare(str,dictionary)
  hash ={}
  dictionary.each do |iDico|
    iSize = str.scan(/(?=#{iDico})/).size
    hash[iDico] = iSize if iSize > 0
  end
  return hash
end
# End of shakespeare .........................................................
#.............................................................................
#.............................................................................

puts "Here is the number of small words"
puts shakespeare(File.read("lib/shakespeare_text.txt"),dictionary1)
puts ""
puts "Here is the number of swear words"
puts shakespeare(File.read("lib/shakespeare_text.txt"),dictionary2)
puts ""
