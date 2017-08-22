class Numeral
  ARABIC_TO_ROMAN = {
     1000 => "M",
     900 => "CM",
     500 => "D",
     400 => "CD",
     100 => "C",
     90 => "XC",
     50 => "L",
     40 => "XL",
     10 => "X",
     9 => "IX",
     5 => "V",
     4 => "IV",
     1 => "I"
   }

   ROMAN_TO_ARABIC = ARABIC_TO_ROMAN.invert

   RANK = ["I", "V", "X", "L", "C", "D", "M"]

   def initialize(num)
     @num = num
   end

   def roman_to_arabic
     reverse_roman = @num.chars.reverse
     res = 0
     skip = false

     reverse_roman.each_with_index do |letter, idx|
       if skip
         skip = false
         next
       end

       next_letter = reverse_roman[idx + 1]
       unless next_letter.nil?
         if RANK.index(next_letter) < RANK.index(letter)
           letter = next_letter + letter
           skip = true
         end
       end

       res += ROMAN_TO_ARABIC[letter]
     end

     res

   end

   def arabic_to_roman

   end
end

a = Numeral.new("XIV")
p a.roman_to_arabic
