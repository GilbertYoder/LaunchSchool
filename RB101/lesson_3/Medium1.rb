# 1. ASCII Art
10.times {|i| puts ( (' ' * i) + "The Flintstones Rock!")}

# 2. Error
puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 + 2}"

# 3. Not enough validation
def factors(number)
  divisor = number
  factors = []

  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end

  factors
end

puts factors(10)

# 4. ---

# 5. There is an error?

limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"

# 6. 
34

# 7.
# No, ruby is not true pass by reference, in this case it will not modify the original hash
# WRONG ^^^ ... In this case, it is passing by reference and the original hash is being destroyed

# 8.
# It will return "paper"

# 9.
# It will return "No"

