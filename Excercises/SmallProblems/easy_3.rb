
def prompt(content)
  puts ("==> #{content}")
end


# Searching 101
def number_to_english(int)
  case int
  when 1
    "first"
  when 2
    "second"
  when 3
    "third"
  when 4
    "fourth"
  when 5
    "fifth"
  else
    "last"
  end
end

number_list = []

6.times do |i|
  prompt("Enter the #{number_to_english(i + 1)} number: ")
  number = gets.chomp.to_i
  number_list << number
end

last = number_list.pop
if number_list.include?(last)
  prompt("The number #{last} appears in #{number_list}")
else
  prompt("The number #{last} does not appear in #{number_list}")
end


# Arithmetic Integer
loop do
  prompt ("Please enter the first number")
  first_num = gets.chomp.to_i

  prompt ("Please enter the second number")
  second_num = gets.chomp.to_i

  prompt("#{first_num} + #{second_num} = #{first_num + second_num}")
  prompt("#{first_num} - #{second_num} = #{first_num - second_num}")
  prompt("#{first_num} * #{second_num} = #{first_num * second_num}")
  if second_num == 0
    prompt("#{first_num} / #{second_num} = Cannot divide by zero!")
  else
    prompt("#{first_num} / #{second_num} = #{first_num / second_num.to_f}")
  end
  prompt("#{first_num} % #{second_num} = #{first_num % second_num}")
  prompt("#{first_num}^#{second_num} = #{first_num**second_num}")

  prompt("Do another operation? (y/n)")
  answer = gets.chomp

  break unless answer.downcase == 'y' || answer.downcase == 'yes'
end

# Counting the Number of Characters
prompt("Please enter a string")
string = gets.chomp

subbed = string.gsub(" ","")
length = subbed.length

prompt("There are #{length} chars in the string: '#{string}'")

# Multiplying two numbers
def multiply(a,b)
  a * b
end

def square(a,power)
  return_num = a
  (power-1).times do |power|
    return_num = multiply(return_num,a)
  end
  return return_num
end

# xor
def xor?(a,b)
  (a == true && b == false) || (a == false && b == true)
end

prompt('XOR')
p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

# Odd Lists
def oddities(array)
  return_array = []
  array.length.times { |i| i.even? ? return_array << array[i] : next }
  return return_array
end

prompt('Oddities')
p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

# Palindromic Strings (Part 1)

def palindrome?(string)
  (string.reverse == string)
end

prompt('Palndrome? P1')
p palindrome?('madam') == true
p palindrome?('Madam') == false
p palindrome?("madam i'm adam") == false
p palindrome?('356653') == true

# Palindromic Strings (Part 2)

def real_palindrome?(string)

  # Not a clean solution :/
  string.downcase!
  array = string.scan(/[[:alnum:]]/)
  string.replace(array.join)

  palindrome?(string)
end

prompt('Palindromic Strings P2')
p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true
p real_palindrome?("Madam, I'm Adam") == true
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

# Palindromic Numbers

def palindromic_number?(int)
  palindrome?(int.to_s)
end

prompt('Palindromic Numbers')
p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true