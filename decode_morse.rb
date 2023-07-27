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

def decode_morse_message(morse_word)
  decoded_word = ''
  words = morse_word.split('   ')
  words.each_with_index do |word, index|
    word.split.each do |morse_char|
      decoded_word += decode_morse_char(morse_char)
    end
    decoded_word += ' ' if index < words.length - 1
  end
  decoded_word
end

puts decode_morse_char('.-')
puts decode_morse_word('-- -.--')
puts decode_morse_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
