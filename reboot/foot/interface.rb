# programme demande d'entrer une équipe de ce que l'on veut et son score
      # -> équipe
      # -> son nb de point
# jusqu'à ce que l'utilisateur tape "exit"

# le programme vous affiche le classement


# faire un hash d'équipes -> nombre de point
# demande d'entrer une équipe de ce que l'on veut et son score
# récolter dans l'array ce que l'utilisateur nous dit
# puts veux tu continuer ou exit
# if ...
# else exit
# puts results.sort

def display(teams_foot)
  teams_foot.each do |answer_name, answer_points|
    puts "L'équipe #{answer_name} - à un score de #{answer_points}"
  end
end

puts "Hello"
teams = {
  "PSG" => 10
}

while true
  puts "Que veux-tu faire'"
  puts "add, exit"
  action = gets.chomp
  case action
  when "add"
    puts "Rentre son nom"
    answer_name = gets.chomp
    puts "Rentre son nb de points"
    answer_points = gets.chomp.to_i
    teams[answer_name] = answer_points
  when "exit"
    break
  end
end

sorted = teams.sort_by {|_answer_name, answer_points| answer_points}.reverse
#methodes de tri sur les hash

display(sorted)




