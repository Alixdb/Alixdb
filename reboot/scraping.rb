# on scrap l'url : https://www.etsy.com/fr/search?q=elephants

# Card => .v2-listing-card_info
#      => .text-body (name)
#      => .currency-value

require 'open-uri'
require 'nokogiri'
# puts "quel catégorie t'intéresse"



# ouvrir l'url pour récupérer le fichier html

# file = open(url)

# html_text = file.read

# doc = Nokogiri::HTML(html_text)

# Une fois qu'on un doc nokogiri
#   search(selector) renvoie un tableau d'élément qui ont la class
#   on peut ) nouveau chercher dans ces éléments
#   une fois qu'on accède à l'élément, 2 méthodes utiles
#     .text pour le contenu de la balise
#     ["href"] ["src"] pour récupérer la valeur d'un attribu



# methode search prend en entrée la classe
# doc.search('.v2-listing-card_info').each do |element|
# p element.search('.text-body')[0].text.strip
# p element.search('.currency-value')[0].text.
# p element.search('.text-body')[0]["src"]
# end

def etsy_scraping(category)
  # construire et retourner le tableau de résultats
  result = []
  url = "https://www.etsy.com/search?q=#{category}"
  file = open(url)
  html_text = file.read
  doc = Nokogiri::HTML(html_text)
    doc.search('.v2-listing-card_info').each do |element|
      result << element.search('.text-body')[0].text.strip
    end
    return result
end
