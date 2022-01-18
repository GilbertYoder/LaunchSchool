CHOICES = %w(rock paper scissors)

def prompt(content)
  puts("__> #{content} >")
end

def win?(first, second)
  (first == "rock" && second == "scissors") ||
    (first == "paper" && second == "rock") ||
    (first == "scissors" && second == "paper")
end

def display_results(player, pc)
  if win?(player, pc)
    prompt("Player Won!")
  elsif win?(pc, player)
    prompt("The Computer outsmarted thee!")
  else
    prompt("It's a tie!")
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
  prompt("The Computer chose #{computer}")

  display_results(choice, computer)

  prompt("Play Again?")
  play_again = gets.chomp
  break unless (play_again.downcase == 'yes') || (play_again.downcase == 'y')
end
