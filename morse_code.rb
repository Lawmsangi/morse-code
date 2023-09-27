def decode_char(morse_code)
  char = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }
  char[morse_code]
end

def decode_word(morse_word)
  morse_characters = morse_word.split
  decoded_characters = []
  morse_characters.each do |morse_char|
    decoded_char = decode_char(morse_char)
    decoded_characters << decoded_char if decoded_char
  end
  decoded_characters.join
end

def decode_message(morse_message)
  morse_words = morse_message.split('   ')

  decoded_words = []

  morse_words.each do |morse_word|
    decoded_word = decode_word(morse_word)
    decoded_words << decoded_word
  end

  decoded_words.join(' ')
end
puts decode_message('.-')
puts decode_message('-- -.--')
puts decode_message('-- -.--   -. .- -- .')
puts decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
