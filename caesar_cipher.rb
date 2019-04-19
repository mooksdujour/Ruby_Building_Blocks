def caesar_cipher(string, shift)

    coder = Hash[Array('a'..'z').zip(Array('a'..'z').rotate(shift))].merge(Hash[Array('A'..'Z').zip(Array('A'..'Z').rotate(shift))])
    string.chars.map { |c| coder.fetch(c, c) }.join
    
  end

puts caesar_cipher("testing zZ1Z",-2)