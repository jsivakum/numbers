class Fixnum
  define_method(:numbers) do
    single_digits = {1 => "one", 2 => "two", 3=> "three", 4=> "four", 5 => "five",
    6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}

    tens = {1 => "ten", 2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty",
    6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}

    teens = {11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen",
    15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}

    full_num = ""
    number = self

       loop do

         if (number>100)
           multiple = number / 100
           full_num = full_num.+(single_digits.fetch(multiple)).+(" hundred ")
           number = number - multiple*100
          # binding.pry
         elsif(number>20)
           multiple = number / 10
           full_num = full_num.+(tens.fetch(multiple))
           number = number - multiple*10
         elsif (number > 10 && number < 20)
           full_num = full_num + teens.fetch(number)
           number = number - number
         elsif (number>0)
           full_num = full_num.+(" ").+(single_digits.fetch(number))
           number = number - number
         end

       break if number==0
     end
     return full_num
   end
end
