# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'rest-client'


# use News API: https://newsapi.org/ to seed database.

# url = RestClient.get 'https://newsapi.org/v2/everything?q=stock&apiKey=41c22b6d8c124eedb1f0677402de89a1'

# all articles about stock from News API to seed database

# url = RestClient.get 'https://newsapi.org/v2/everything?q=finance&apiKey=41c22b6d8c124eedb1f0677402de89a1'

# all articles about finance from News API to seed database

# url = RestClient.get 'https://newsapi.org/v2/everything?q=business&apiKey=41c22b6d8c124eedb1f0677402de89a1'

# all articles about business from News API to seed database

# url = RestClient.get 'https://newsapi.org/v2/everything?q=economy&apiKey=41c22b6d8c124eedb1f0677402de89a1'

# all articles about the economy from News API to seed database

# url = RestClient.get 'https://newsapi.org/v2/everything?q=banks&apiKey=41c22b6d8c124eedb1f0677402de89a1'

# all articles about banks from News API to seed database

url = RestClient.get 'https://newsapi.org/v2/everything?q=markets&apiKey=41c22b6d8c124eedb1f0677402de89a1'

# all articles about markets from News API to seed database


url_array = JSON.parse(url)["articles"]

url_array.each do |article|
    Article.create(source_name: article["source"]["name"],
    author: article["author"],
    title: article["title"],
    description: article["description"],
    url: article["url"],
    urlToImage: article["urlToImage"],
    publishedAt: article["publishedAt"],
    content: article["content"])
end