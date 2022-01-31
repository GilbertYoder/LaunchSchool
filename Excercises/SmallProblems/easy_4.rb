def prompt(content)
  puts ("==> #{content}")
end

require 'pry'

# Short Long Short
def short_long(string_1, string_2)
  if string_1.length > string_2.length
    return string_2, string_1
  else
    return string_1, string_2
  end
end

def short_long_short(string_1, string_2)
  short_str, long_str = short_long(string_1, string_2)
  sls_str = short_str + long_str + short_str
end

puts ("Short Long Short")
p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

# What century is that?
def century(year)
  letter_dictionary = {
    '1': 'st',
    '2': 'nd',
    '3': 'rd',
    '4': 'th',
  }
  century = ((year.to_f / 100).ceil).to_i
  last_digit = century.digits.first

  append_str = 'th'
  if last_digit > 0 && last_digit < 4 && century.digits[1] != 1
    append_str = letter_dictionary[last_digit.to_s.to_sym]
  end

  return (century.to_s + append_str)
end

puts ("What Century is that?")
p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'


# Leap Years (Part 1)
def leap_year?(year)
  if year >= 1752
    if year % 100 == 0
      (year % 400 == 0)
    else
      (year % 4 == 0)
    end
  else
    (year % 4 == 0)
  end
end

puts("Leap Years (Part 1 & 2)")
p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true

#  Multiples of 3 and 5
prompt ('Multiples of 3 and 5')
def multisum(integer)
  multiples_3 = []
  multiples_5 = []

  # Make a list of the multiples of 3
  (3..integer).step(3) do |i|
    multiples_3 << i
  end

  # Make a list of the multiples of 5
  (5..integer).step(5) do |i|
    multiples_5 << i
  end

  # merge the two lists
  number_list = multiples_3.union(multiples_5)

  # Remove duplicates
  number_list.uniq!

  # sum the list
  list_sum = number_list.sum
  return list_sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168


# Running Totals
prompt('Running Totals')

def running_total(num_list)
  running_total_array = []
  running_total = 0

  num_list.each do |number|
    running_total += number
    running_total_array << running_total
  end

  running_total_array
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

# Convert a String to a Number!
prompt('Convert a String to a Number!')

def string_to_integer(string)
  digits_array = string.split('')

  new_digit = 0

  digits_array.each_with_index do |digit, digit_list_index|
    string_digits = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

    if !string_digits.include?(digit)
      return 'Cannot convert string to integer: Contains invalid characters'
    end

    string_digits.each_with_index do |string_digit, index|
      if (digit <=> string_digit) == 1
        next
      elsif (digit <=> string_digit) == 0
        current_digit = index

        digit_place = 10 ** (digits_array.size - (digit_list_index + 1))
        number = digit_place * current_digit
        new_digit += number
      end
    end
  end
  new_digit
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

# Convert a String to a Signed Number!
prompt('Convert a String to a Signed Number!')

# The method I used above is complex on its own...but adding the sign essentially breaks it, the LS solution is much better

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def string_to_signed_integer(string)
  case string[0]
  when '-'
    number = -string_to_integer(string[1..-1])
  when '+'
    number = string_to_integer(string[1..-1])
  else
    string_to_integer(string)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100


# Convert a Number to a String!
prompt('Convert a Number to a String!')

S_DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
  6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0'
}

def integer_to_string(integer)
  int_string = ''
  
  if integer < 0
    int_string << '-'
    integer = -integer
  elsif integer > 0
    int_string << '+'
  end

  digits = integer.digits.reverse
  digits.each { |int| int_string << S_DIGITS[int]}

  return int_string
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'


# Convert a Signed Number to a String!
prompt('Convert a Signed Number to a String!')

p integer_to_string(4321) == '+4321'
p integer_to_string(-123) == '-123'
p integer_to_string(0) == '0'