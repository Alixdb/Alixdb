# objectif parier sur le vainqueur

# message d'accueil

# se donner le tableau des chevaux

# afficher les chevaux en liste

# demande à l'utilisateur sur quel cheval il va parier

# stocker le choix

# simuler une course

# stocker le résultat

# comparer le choix utilisateur avec vainqueur course

puts "Bonjour, bienvenue à Longchamp"

horses = ["Canaçon", "Sonic", "Belle des vents"]


while true

  puts "Voici les chevaux sur lesquels tu peux parier"

  horses.each_with_index do |horse, index|
    puts "Cheval numéro #{index +1} - #{horse}"
  end

  puts "Sur quel cheval veux-tu parier? Donne ton numéro"
  answer = gets.chomp
    if answer == "exit"
      break
    else
      index = answer.to_i
      bet = horses[index-1]

    result = horses.shuffle
    winner = result.first
    if bet == winner
      puts "You win, congrats"
    else
      puts "You lose, the winner was #{winner}, wanna play again? (y/n)"
    end
  end
end

puts " A bientôt"







