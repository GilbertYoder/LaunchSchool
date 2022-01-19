require "pry"

CHOICES = %w(rock paper scissors spock lizzard)

def prompt(content)
  puts("--> #{content}")
end

def win?(first, second)
  winning_combinations = {
                          'rock': ['scissors', 'lizzard'],
                          'paper': ['rock', 'spock'],
                          'scissors': ['paper', 'lizard'],
                          'spock': ['scissors', 'rock'],
                          'lizzard': ['paper', 'spock']
                        }

  # binding.pry
  if (winning_combinations[first.to_sym].include?(second))
    return first
  elsif (winning_combinations[second.to_sym].include?(first))
    return second
  end
end

def display_results(player, pc)
  if win?(player, pc) == player
    prompt("Player won!")
  elsif win?(player, pc) == pc
    prompt("I won!")
  else
    prompt("Neither won!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Pick your weapon: #{CHOICES.join(', ')}")
    choice = gets.chomp
    break if CHOICES.include?(choice)
    prompt("Blind you are.....")
  end

  computer = CHOICES.sample
  prompt("I chose #{computer}")

  display_results(choice, computer)

  prompt("Play Again?")
  play_again = gets.chomp
  break unless (play_again.downcase == 'yes') || (play_again.downcase == 'y')
end
