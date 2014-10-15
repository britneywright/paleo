# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

foods = Food.create!([
  {name: "bread", paleo: false, slug: "bread"},
  {name: "banana", paleo: true, slug: "banana"},
  {name: "apple", paleo: true, slug: "apple"},
  {name: "eggs", paleo: true, slug: "eggs"},
  {name: "candy", paleo: false, slug: "candy"}
])

gifs = Gif.create([
  {name:"Emma Stone No", truthy: false, image_url: "no/emma-stone-no-professionalfangirls.gif"}, 
  {name: "No Way Jose Full House", truthy: false, image_url: "no/no_way_jose_full_house_rapgenius.gif"},
  {name: "Sherlock No", truthy: false, image_url: "no/sherlock-no-giphy.gif"},
  {name: "Old Spice Smile Yes", truthy: true, image_url: "yes/yes-smile-giphy.gif"},
  {name: "Snoop Dogg Yes", truthy: true, image_url: "yes/snoop-dogg-yes-giphy.gif"},
  {name: "Friends Yes", truthy: true, image_url: "yes/friends-yes-likegif.gif"},
])