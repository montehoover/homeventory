# Run this file using the following command from the command line:
# bundle exec rails runner "eval(File.read 'seeders/create_user.rb')"


puts "Creating database test data for homeventory...\n"

puts "Creating test User..."
User.create(name: 'Mr. Test', email: 'test@test.com', password: 'test1234' )
puts "Created User: '#{User.first.name}'.  There are #{User.all.length} Users total."


puts "Creating test Categories..."
Category.create(name: "Beverage")
Category.create(name: "Pantry")
Category.create(name: "Refrigerated")
Category.create(name: "Frozen")
Category.create(name: "Toiletry")
puts "Created Category: '#{Category.first.name}' and #{Category.all.length} others."

Regular.Create


# for user in User.all
#   user.destroy
# end

# for category in Category.all
#   category.destroy
# end

