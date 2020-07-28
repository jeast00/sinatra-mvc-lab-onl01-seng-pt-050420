class PigLatinizer
  
  def piglatinize(input)
    input.split(' ').map do |word|
      translate_word(word)
    end.join(' ')
  end 
  
  def vowels(vowel)
    vowel.match(/[aAeEiIoOuU]/)
  end 
  
  def translate_word(word)
    if vowels(word[0])
      "#{word}way"
    else
      vowel_index = word.index(/[aAeEiIoOuU]/)
      consonants = word.slice(0..vowel_index-1)
      word_leftover = word.slice(vowel_index..word.length)
      word_leftover + consonants + "ay"
    end 
  end 
  
end