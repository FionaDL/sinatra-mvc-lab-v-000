require 'pry'

class PigLatinizer

   def piglatinize(sentence)
     if sentence.include?(" ")
       split_sentence(sentence).join(" ")
     elsif ["a","e","i","o","u"].include?(sentence[0].downcase)
       sentence + "way"
     else
        parts = sentence.split(/([aeiou].*)/)
        parts[1]+parts[0]+"ay"
     end
   end

   def split_sentence(sentence)
     array = sentence.split(" ")
     array.map do |word|
       piglatinize(word)
     end
   end

end
