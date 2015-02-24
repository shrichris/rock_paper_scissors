# Rock paper scissors game
# Author: Sriram
# Date: 24 February 2015

# Determines winner of Rock Paper Scissors game. Brute Force Lookup
def determine_winner(player_choice, computer_choice)
  # initialise a hash to extract long forms (Rock for r etc.)
  choices_hash = {"r" => "rock", "p" => "paper", "s" => "scissors"}
  player_choice_extended = choices_hash[player_choice]
  computer_choice_extended = choices_hash[computer_choice]
  puts "Player chose #{player_choice_extended}"
  puts "Computer chose #{computer_choice_extended}"
  case
  when player_choice == "r" && computer_choice == "s"
    puts "Rock smashes scissors. Player wins."
  when player_choice == "r" && computer_choice == "p"
    puts "Paper covers Rock. Computer wins."
  when player_choice == "p" && computer_choice == "s"
    puts "Scissors cut paper. Computer wins."
  when player_choice == "p" && computer_choice == "r"
    puts "Paper covers rock. Player wins."
  when player_choice == "s" && computer_choice == "p"
    puts "Scissors cut paper. Player wins."
  when player_choice == "s" && computer_choice == "r"
    puts "Rock smashes scissors. Computer wins."
  else
    puts "Same choice. Tie!"
  end
end
  
# Main gameplay loop
#Initilaise array of choices
choices = ["r", "p", "s"]
begin
  puts "Would you like to play? Please enter Y or y to play, anything else to exit"
  # Obtain user input
  user_input = gets.chomp.downcase
  # Check if user wants to play and play if they do
  if user_input == "y"
    puts "Please make your choice (R/P/S)"
    player_choice = gets.chomp.downcase
    # Check that user has made a valid entry   
    while player_choice != "r" && player_choice != "p" && player_choice != "s"
      puts "Please enter one of R, P or S (upper or lower case are both OK)"
      player_choice = gets.chomp.downcase
    end
    # Get Computer's choice by sampling randomply from choices array
    computer_choice = choices.sample
    # Determine winner
    determine_winner(player_choice,computer_choice)    
  end 
end while user_input == "y"