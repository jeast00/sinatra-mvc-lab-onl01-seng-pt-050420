class PigLatinizer
  
  def piglatinize(input)
    input.split(' ').map do |word|
      translate_word(word)
    end.join(' ')
  end 
  
  def vowels(vowel)
    vowel.match(/[aeiou]/)
  end 
  
  def translate_word(word)
    if vowels(word[0])
      "#{word}way"
    end 
  end 
  
end