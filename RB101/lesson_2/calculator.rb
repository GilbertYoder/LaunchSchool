
def verify_num (number)
  number.
end

puts 'Welcome to the Calculator'

puts '#1>> '
number1 = gets.chomp

puts '#2>> '
number2 = gets.chomp

puts 'Op. (* / + -)>> '
operator = gets.chomp

result = case operator
          when '*'
            number1.to_i * number2.to_i
          when '/'
            number1.to_i / number2.to_f
          when '+'
            number1.to_i + number2.to_i
          when '-'
            number1.to_i - number2.to_i
          end
