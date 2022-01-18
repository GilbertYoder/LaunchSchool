CHOICES = ['rock', 'paper', 'scissors']

def prompt(content)
  puts ("__> #{content} >")
end

def display_results(player, pc)
  if (player == "rock" && pc == "scissors") ||
      (player == "paper" && pc == "rock") ||
      (player == "scissors" && pc == "paper")
      prompt ("Player Won!")
  elsif (player == pc)
      prompt("It's a tie!")
  else
      prompt("The Computer outsmarted thee!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Pick your weapon: #{CHOICES.join(', ')}")
    choice = gets.chomp
    break if (CHOICES.include?(choice))
    prompt("Blind you are.....")
  end

  computer = CHOICES.sample
  prompt("The Computer chose #{computer}")

  display_results(choice, computer)

  prompt("Play Again?")
  play_again = gets.chomp
  break unless (play_again.downcase == 'yes') || (play_again.downcase == 'y')
end