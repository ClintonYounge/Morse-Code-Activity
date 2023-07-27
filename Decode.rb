def decode_morse_char(morse_char)
  morse_code_to_char = {
    '.-' => 'A', '-...' => 'B',
    '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F',
    '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N',
    '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R',
    '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V',
    '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '..--' => 'Z'
  }
  morse_code_to_char[morse_char] || 'UNKNOWN'
end

def decode_morse_word(morse_word)
  morse_word.split.map { |morse_char| decode_morse_char(morse_char) }.join
end

puts decode_morse_char('.-')
puts decode_morse_word('-- -.--')
