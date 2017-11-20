require_relative 'scraping.rb'

def display(list)
  list.each_with_index do |item, index|
    if item[:checked]
      puts "#{index + 1} - #{item[:name]} [X]"
    else
      puts "#{index +1} - #{item[:name]} [ ]"
    end
  end
end

puts " Welcome on Wishly! :) "
wishlist = [{name: "macbook", checked: true}, {name: "ipad", checked: false}]

while true
  puts "What do you want to do on your list? "
  puts "add, display, delete, exit or check"
  action = gets.chomp

  case action
    when "add"
      puts "What product do you want to add?"
      product = gets.chomp
      wishlist << {name: product, checked: false}
    when "display"
      display(wishlist)
    when "delete"
      display(wishlist)
      puts "Which product would you like to delete from your list? - give number "
      index_to_delete = gets.chomp.to_i - 1
      wishlist.delete_at(index_to_delete)
    when "check"
      display (wishlist)
      puts "which item would you like to check - give the number"
      index_to_check = gets.chomp.to_i - 1
      if wishlist[index_to_check][:checked]
        wishlist[index_to_check][:checked] = false
      else
        wishlist[index_to_check][:checked] = true
      end
      display (wishlist)
    when "pick"
      puts "Which category do you want inspiration for?"
      category = gets.chomp
      # Recuperer les resultats depuis Etsy pour cette categorie
      result = etsy_scraping(category)
      result[0..9].each_with_index do |element, index|
        puts "#{index + 1} - #{element}"
      end
      puts "What would you want to add to your list? Choose a number"
      user_number = gets.chomp.to_i
      additional_choice = result[user_number]
      wishlist << {name: additional_choice, checked: false}
      # Les afficher
      # Demander au user lequel il veut ajouter à sa wishlist
    when "exit"
      break
    else
      puts "Invalid action. :( Try again! "
    end
  end


