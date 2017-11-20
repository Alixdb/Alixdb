require_relative(calculate)

# coder une calculatrice

# demander a l'utilisateur un premier chiffre
# Récupérer le nombre entré par l'utilisateur
# Demander le deuxième chiffre
# Récupérer le nombre entré par l'utilisateur
# Demander le type d'opération (+, _, /, *)
# Stocker l'opération demandée
# Selon l'opération calculer le résultat
# Afficher le résultat à l'utilisateur

print " Entrez le premier chiffre de votre opération"
first_number = gets.chomp

print " Entrez le second chiffre de votre opération"
second_number = gets.chomp

print "entrea le type d'opération souhaité (+, -, /, *)"
operation = gets.chomp

# stocker le resultat donc créer une variable pour !
result = calculate(first_number, second_number, operation)

if result
  puts "Votre résultat est #{result}"
else
  puts result = nil



