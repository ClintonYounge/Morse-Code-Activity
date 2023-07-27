def decode_morse_char(morse_char)
    case morse_char
        when ".-"
          return "A"
        when "-..."
          return "B"
        when "-.-."
          return "C"
        when "-.."
          return "D"
        when "."
          return "E"
        when "..-."
          return "F"
        when "--."
          return "G"
        when "...."
          return "H"
        when ".."
          return "I"
        when ".---"
          return "J"
        when "-.-"
          return "K"
        when ".-.."
          return "L"
        when "--"
          return "M"
        when "-."
          return "N"
        when "---"
          return "O"
        when ".--."
          return "P"
        when "--.-"
          return "Q"
        when ".-."
          return "R"
        when "..."
          return "S"
        when "-"
          return "T"
        when "..-"
          return "U"
        when "...-"
          return "V"
        when ".--"
          return "W"
        when "-..-"
          return "X"
        when "-.--"
          return "Y"
        else
          return "Z"
      end
end

def decode_morse_word(morse_word)
    decoded_word = ""
    morse_word.split.each do |morse_char|
        decoded_word += decode_morse_char(morse_char)
    end
    return decoded_word
end

puts decode_morse_char(".-")
puts decode_morse_word("-- -.--")
