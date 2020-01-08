cities = ["Jackson", "Southhaven", "Oxford", "Vicksburg", "Booneville"]

# times loop
cities.length.times do |auto_index|
  city = cities[auto_index]
  puts "#{city}, Mississippi"
end

# each loop
cities.each do |city|
  puts "#{city}, Mississipi"
end

number = 9
# executes if the condition is true
if number < 4
  puts "bats in the belfry"
end

# executes if the condition is false
unless number < 4
  puts "cats in the belfry"
end


# runs while the condition is true
while number < 4
  puts "bats in the belfry"
  number += 1
end

# runs while the condition is false
until number < 4
  puts "bats in the belfry"
  number += 1
end


