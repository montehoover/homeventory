# Run this file using the following command from the command line:
# bundle exec rails runner "eval(File.read 'seeders/create_user.rb')"


puts "Deleting previous data for homeventory...\n"

for item in Item.all
  item.destroy
end

for category in Category.all
  category.destroy
end

for fav in Favorite.all
  fav.destroy
end

for user in User.all
  user.destroy
end



puts "Creating database test data for homeventory...\n"

puts "Creating test User..."
User.create(name: 'Ms. Test', email: 'test@test.com', password: 'test1234' )
puts "Created User: '#{User.first.name}'.  There are #{User.all.length} Users total.\n"


puts "Creating test Categories..."
Category.create(name: "Beverage")
Category.create(name: "Pantry")
Category.create(name: "Refrigerated")
Category.create(name: "Frozen")
Category.create(name: "Toiletry")
puts "Created Category: '#{Category.first.name}' and #{Category.all.length} others.\n"

puts "Creating test Favorites..."
User.first.favorite.create(name: "bananas")
User.first.favorite.create(name: "canned tomatoes")
User.first.favorite.create(name: "canned black beans")
User.first.favorite.create(name: "milk")
User.first.favorite.create(name: "olive oil")
User.first.favorite.create(name: "soy sauce")
User.first.favorite.create(name: "mustard")
User.first.favorite.create(name: "vodka")
User.first.favorite.create(name: "dish soap")
User.first.favorite.create(name: "toilet paper")
puts "Created Favorite: '#{Favorite.first.name}' and #{Favorite.all.length} others.\n"


puts "Creating test Items..."
puts "Creating 6 bananas..."
# These default values could come from defaults we program, and the user could edit them.  This example shows how that would work:
fresh_default = 7
use_default = 6
max_sofar_default = 6
Favorite.find_by(name: "bananas").item.create(name: "banana", description: "A tropical fruit.", fresh_duration: fresh_default, exp_date: DateTime.now + use_default, avg_use_duration: use_default, use_date: DateTime.now + use_default, restock_amount: max_sofar_default/3, amount_left: 1.0, img_url: "http://lorempixel.com/100/100/", user_id: User.first.id)
Favorite.find_by(name: "bananas").item.create(name: "banana", description: "A tropical fruit.", fresh_duration: fresh_default, exp_date: DateTime.now + use_default, avg_use_duration: use_default, use_date: DateTime.now + use_default, restock_amount: max_sofar_default/3, amount_left: 1.0, img_url: "http://lorempixel.com/100/100/", user_id: User.first.id)
Favorite.find_by(name: "bananas").item.create(name: "banana", description: "A tropical fruit.", fresh_duration: fresh_default, exp_date: DateTime.now + use_default, avg_use_duration: use_default, use_date: DateTime.now + use_default, restock_amount: max_sofar_default/3, amount_left: 1.0, img_url: "http://lorempixel.com/100/100/", user_id: User.first.id)
Favorite.find_by(name: "bananas").item.create(name: "banana", description: "A tropical fruit.", fresh_duration: fresh_default, exp_date: DateTime.now + use_default, avg_use_duration: use_default, use_date: DateTime.now + use_default, restock_amount: max_sofar_default/3, amount_left: 1.0, img_url: "http://lorempixel.com/100/100/", user_id: User.first.id)
Favorite.find_by(name: "bananas").item.create(name: "banana", description: "A tropical fruit.", fresh_duration: fresh_default, exp_date: DateTime.now + use_default, avg_use_duration: use_default, use_date: DateTime.now + use_default, restock_amount: max_sofar_default/3, amount_left: 1.0, img_url: "http://lorempixel.com/100/100/", user_id: User.first.id)
Favorite.find_by(name: "bananas").item.create(name: "banana", description: "A tropical fruit.", fresh_duration: fresh_default, exp_date: DateTime.now + use_default, avg_use_duration: use_default, use_date: DateTime.now + use_default, restock_amount: max_sofar_default/3, amount_left: 1.0, img_url: "http://lorempixel.com/100/100/", user_id: User.first.id)

puts "Creating 2 canned tomatoes..."
# These default values could come from defaults we program, and the user could edit them.  This example shows how that would work:
fresh_default = 900
use_default = 30
max_sofar_default = 2
Favorite.find_by(name: "canned tomatoes").item.create(name: "canned tomatoes", description: "A red vegetable in a can.", fresh_duration: fresh_default, exp_date: DateTime.now + fresh_default, avg_use_duration: use_default, use_date: DateTime.now + use_default, restock_amount: max_sofar_default/3, amount_left: 1.0, img_url: "http://lorempixel.com/100/100/", user_id: User.first.id)
Favorite.find_by(name: "canned tomatoes").item.create(name: "canned tomatoes", description: "A red vegetable in a can.", fresh_duration: fresh_default, exp_date: DateTime.now + fresh_default, avg_use_duration: use_default, use_date: DateTime.now + use_default, restock_amount: max_sofar_default/3, amount_left: 1.0, img_url: "http://lorempixel.com/100/100/", user_id: User.first.id)

puts "Creating 1 milk..."
# These default values could come from defaults we program, and the user could edit them.  This example shows how that would work:
fresh_default = 9
use_default = 7
max_sofar_default = 1
Favorite.find_by(name: "milk").item.create(name: "milk", description: "A hearty drink.", fresh_duration: fresh_default, exp_date: DateTime.now + fresh_default, avg_use_duration: use_default, use_date: DateTime.now + use_default, restock_amount: max_sofar_default/3, amount_left: 1.0, img_url: "http://lorempixel.com/100/100/", user_id: User.first.id)

puts "Creating 1 olive oil..."
# These default values could come from defaults we program, and the user could edit them.  This example shows how that would work:
fresh_default = 300
use_default = 45
max_sofar_default = 1
Favorite.find_by(name: "olive oil").item.create(name: "olive oil", description: "A great oil.", fresh_duration: fresh_default, exp_date: DateTime.now + fresh_default, avg_use_duration: use_default, use_date: DateTime.now + use_default, restock_amount: max_sofar_default/3, amount_left: 1.0, img_url: "http://lorempixel.com/100/100/", user_id: User.first.id)