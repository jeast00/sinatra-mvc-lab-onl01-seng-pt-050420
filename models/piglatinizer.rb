class PigLatinizer
  
  def piglatinize(input)
    input.split(' ').map do |word|
      translate_word(word)
    end
  end 
  
  
  
end