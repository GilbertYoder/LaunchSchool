
# take 3 pieces of information
# Loan Amount, Annual Percentage Rate (APR), loan duration

# output monthly interest rate, loan duration (in months), monthly payment

# use the following formula

# monthly_payment = loan_amount  * (monthly_interest / (1 - (1 + monthly_interest)**(-loan_duration)))
require "pry"

def prompt(string)
  puts("==>>" + string)
end

def perc(int)
  return int / 100.00
end

def calculate_payments(loan_amount, annual_percent_rate, loan_duration)
  
  duration_months = loan_duration * 12
  monthly_interest = annual_percent_rate / 12
  
  # binding.pry
  monthly_payment = loan_amount  * (monthly_interest / (1 - (1 + monthly_interest)**(-duration_months)))

  return [
          "monthly_payment": monthly_payment.round(2),
          "monthly_interest": monthly_interest.round(2),
          "duration_months": duration_months
          ]
end


# ask the user for ->
loan_amount = -1
loop do
  prompt("Enter the loan amount")
  loan_amount = gets.chomp.to_f
  break if loan_amount.to_f > 0
end

annual_percent_rate = -1
loop do
  prompt('Enter the Annual Percentage Rate')
  annual_percent_rate = gets.chomp.to_f
  annual_percent_rate = perc(annual_percent_rate)
  break if annual_percent_rate >= 0
end

loan_duration = 0
loop do
  prompt('Enter the loan duration (in years)')
  loan_duration = gets.chomp.to_f
  break if loan_duration >= 0
end


data = calculate_payments(loan_amount, annual_percent_rate, loan_duration)

puts ("\n\n$--------------RESULTS--------------$")
puts ("| You will pay   |  $#{data[0][:monthly_payment]} / month")
puts ("| For            |  #{data[0][:duration_months]} months")
puts ("$-----------------------------------$")