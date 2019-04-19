dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
    found = Hash.new(0)
    word_array = word.downcase.split( " ")

    word_array.each { |word|
        dictionary.each { |element|
            if (word.include?(element))
                found[element] += 1
            end
        }
    }
    found
end

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)