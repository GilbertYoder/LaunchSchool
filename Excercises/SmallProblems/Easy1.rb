# Reverse it (Part 2)
# method that takes sentence... words 5 or more are reversed
# return that modified sentence

def reverse_words(string)
  str_array = string.split
  str_array.map! {|word| word.length > 4 ? word.reverse : word}
  str_array.join(" ")
end

puts reverse_words("This Hello World is good not bobby")

# Stringy Strings

def stringy(int, i = 1)

  stringified = []
  while stringified.length < int do
    stringified << i
    i == 1 ? i = 0 : i = 1
  end
  stringified.join
end

puts stringy(10, 0)

# Array average
def average(array)
  array.sum / array.count
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

puts "---------SUM OF DIGITS---------"
# Sum of digits

def sum(int)
  int.digits.sum
end


puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45


puts "---------Calc Bonus---------"

def calculate_bonus(salary, bool)
  bool ? salary / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000