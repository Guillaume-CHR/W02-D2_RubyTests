#****************************************************************************
# RUBY - Count word (Global)
#****************************************************************************
#   Ruby's Program - word_counter
#   Written by: Guillaume CHRISTE
#   Date: 16-Jan-2018
#   
#   Description:
#
#****************************************************************************
dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
def word_counter(str,dictionary)
  hash ={}
  puts "\nThe string is #{str}"
  dictionary.each do |iDico|
    iSize = str.scan(/(?=#{iDico})/).size
    hash[iDico] = iSize if iSize > 0
  end
  return hash
end

puts word_counter("below", dictionary)
puts word_counter("Howdy partner, sit down! How's it going?", dictionary)
#puts word_counter("Howdy partner, sit down! How's it going?", dictionary)
# End of word_counter ........................................................
#.............................................................................
#.............................................................................