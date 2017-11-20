# Objectif : coder un logiciel de course
# Se donner un panier vide (tableau)
# se donner un stock de produits
# afficher le stock de produits
# demander à l'utilisateur quel produit
# ajouter ce choix au panier
# recommencer le choix

cart = {
}

items = {
    "pomme" => {price: 0.60, stock: 100},
    "orange" => {price: 0.80, stock: 100},
    "quinoa" => {price: 2.70, stock: 100},
    "pain" => {price: 1, stock: 100}
  }

while true
  puts "Les produits disponibles sont :"

  items.each do |produit, info|
    puts "- #{produit} - (€#{info[:prix]} disponibles"
  end

  puts "Quel produit souhaitez-vous rajouter dans votre panier ? Tapez le nom du produit ou exit"
  user_choice = gets.chomp
  if user_choice == "exit"
    break
  elsif items.has_key? user_choice
    puts " Combien en veux-tu ? "
    quantity = gets.chomp.to_i

  available_stock = items[user_choice][:stock]
    if quantity <= available_stock
      cart[user_choice] += quantity
    else
      puts "Il n'y a que #{available_stock} #{user_choice} disponibles"
    end

  else
    puts "Invalid choice"
  end
end

puts "-" * 20

# on part d'un montant nul
# on pracourt le panier
# pour chauqe article du panier => chercher le prix
# ajouter au montant

sum = 0

cart.each do |name, quantity|
  price = items[name][:price]
  subtotal = price * quantity
  sum += subtotal
  puts "- #{quantity} X #{name} (#{price}€ each) => #{subtotal}"
end

puts TOTAL = "#{sum}€"
