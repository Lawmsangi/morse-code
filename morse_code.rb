def decode_char(morse_code)
    char = {
      ".-" => "A", "-..." => "B", "-.-." => "C", "-.." => "D",
      "." => "E", "..-." => "F", "--." => "G", "...." => "H",
      ".." => "I", ".---" => "J", "-.-" => "K", ".-.." => "L",
      "--" => "M", "-." => "N", "---" => "O", ".--." => "P",
      "--.-" => "Q", ".-." => "R", "..." => "S", "-" => "T",
      "..-" => "U", "...-" => "V", ".--" => "W", "-..-" => "X",
      "-.--" => "Y", "--.." => "Z"
    }
    char[morse_code]
  end
  def decode_word(morse_word)
    morse_characters = morse_word.split(" ")
    decoded_characters = []
    morse_characters.each do |morse_char|
      decoded_char = decode_char(morse_char)
      decoded_characters << decoded_char if decoded_char
    end
    decoded_word = decoded_characters.join
    return decoded_word
  end
  result = decode_word("-- -.--")
  puts result