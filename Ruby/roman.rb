# numbers = {
#   "M" => 1000,
#   "CM" => 900, "D" => 500, "CD" => 400, "C" => 100,
#   "XC" => 90,  "L" => 50,  "XL" => 40,  "X" => 10,
#   "IX" => 9,   "V" => 5,   "IV" => 4,   "I" => 1
# }

# puts "Enter a number to convert"
# num=gets.chomp().to_i
# roman=""
# for k,v in numbers
#     if(num>=v)
#         # puts v,k
#         # num-=1
#         roman+=k
#         num=num-v
#         puts num
#          puts roman
#     end
#     #puts num
# end
# #puts roman

numbers = {
    "M" => 1000,
    "CM" => 900, "D" => 500, "CD" => 400, "C" => 100,
    "XC" => 90,  "L" => 50,  "XL" => 40,  "X" => 10,
    "IX" => 9, "VIII" => 8, "VII" => 7, "VI" => 6,  "V" => 5,   "IV" => 4, "III" => 3, "II" => 2,   "I" => 1
  }

puts "Enter a number to convert"
num=gets.chomp().to_i
roman=""
r1=""
for k,v in numbers
    if(num>=v)
        # puts v,k
        # num-=1
        if num>=10 && num<40
            r1=k*(num/10)
            roman+=r1
        else
            roman+=k
        end
        # roman+=k
       
        #puts num
        num=num%v
        
         #puts roman
         #puts v
    end
    #puts num
end
puts roman
