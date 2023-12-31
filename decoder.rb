def decode_char(char)
  dictionary = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G',
    '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M',
    '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S',
    '-' => 'T', '..-' => 'U', '...-' => 'V',
    '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z', '.----' => '1', '..---' => '2',
    '...--' => '3', '....-' => '4', '.....' => '5',
    '-....' => '6',
    '--...' => '7',
    '---..' => '8',
    '----.' => '9',
    '-----' => '0'
  }
  dictionary[char]
end

def decode_word(word)
  result = ''
  word.split.each do |char|
    result.concat(decode_char(char))
  end
  result
end

def decode_message(word)
  result = ''
  word.split('   ').each do |char|
    result.concat(decode_word(char), ' ')
  end
  result
end

puts decode_message('-- -.--   -. .- -- .')
puts decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
