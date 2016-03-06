#                Y
#              A
#            A
#          R           R
#            A       A   A
#              A   A       A
#    Y           Y           Y
#      A       A   A
#        A   A       A
#          R           R
#                    A
#                  A
#                Y


def swasify(word)
  word = word.upcase.gsub(' ','').strip
  width = (word.length*2 - 1)*4 - 3
  sc = width/2
  word.split('')[0..-2].each do |letter|
    puts " "*sc + letter
    sc -= 2
  end
  sc2 = word.length*4 - 5
  puts " "*sc + word[-1] + " "*sc2 + word[-1]
  sc3 = 3
  
  word.split('')[1..-2].reverse.each do |letter|
    sc += 2
    sc2 -= 4 
    puts " "*sc + letter + " "*sc2 + letter + " "*sc3 + letter
    sc3 += 4
  end

  puts (word[0] + ' '*sc3)*2 + word[0]

  sc = 2
  word.split('')[1..-2].each do |letter|
    sc3 -= 4
    puts " "*sc + letter + " "*sc3 + letter + " "*sc2 + letter
    sc += 2
    sc2 += 4
  end

  sc2 = word.length*4 - 5
  puts " "*sc + word[-1] + " "*sc2 + word[-1]
  sc += sc2 - 1
  word.split('')[0..-2].reverse.each do |letter|
    puts " "*sc + letter
    sc -= 2
  end  
end

swasify ARGV.join ''