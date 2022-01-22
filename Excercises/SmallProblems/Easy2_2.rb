age = rand(20..200)
puts ("Teddy is #{age} years old!")


# Square footage of a room in meters and feet 
def calc_footage(length, width)
  meters = length * width
  feet = meters * 10.7639
  footage = ['meters' => meters, 'feet' => feet]
end

puts ("Enter the length of the room (in meters)")
length = gets.chomp.to_i

puts ("Enter the width of the room (in meters)")
width = gets.chomp.to_i

p calc_footage(length, width)


# Tip Calculator
def calc_tip(bill, tip_percent)
  tip = bill * tip_percent
  total = tip + bill
end

puts ("Enter the bill amount")
bill = gets.chomp.to_f

puts ("Enter the desired tip percentage (as a percentage)")
tip = (gets.chomp.to_f) / 100

p calc_tip(bill, tip)

# Retirement Calculator
def calc_retirement(age, ret_age)
  ret_age - age
end

puts ("Please enter your age")
age = gets.chomp.to_i

puts ("Please enter your desired age of retirement")
ret_age = gets.chomp.to_i

years = calc_retirement(age, ret_age)

puts ("It is #{Time.now.year}, you will retire in #{years} years, in the year #{Time.now.year + years}")

# Scream the name
puts ("Please enter your name")
name = gets.chomp

if name.chomp!("!") == name
  puts ("HI #{name.upcase}!!!")
else
  puts ("Sup, #{name}")
end

# Count to 100 using odd numbers

100.times {|i| i.odd? ? puts(i) : next}

(1..99).step(2) {|i| p i}

# Even numbers

100.times {|i| i.even? ? puts(i) : next}

# Sum or product of numbers between 0 and chosen number

puts ("Enter a positive integer")
number = gets.chomp.to_i

puts ("'S' to sum, 'P' to multiply")
ans = gets.chomp

output = 1
(number - 1).times { |i| ans == 'S' ? output += (i + 1): output *= (i + 1)}

puts output
