system 'clear'

# # 1a
# foods = []

# 5.times do
#   puts "What is your favorite food?"
#   food = gets.chomp
#   foods << food
# end

# # b, c
# num = 1
# foods.each do |food|
#   puts "#{num}. #{food}"
#   num += 1
# end

# # 2 a
# count = 0

# 11.times do 
#   puts count
#   count += 1
# end

# # b
# sam_recipes = ["Churros", "Stuffed Peppers", "Cheesecake", "Pancakes", "Pizza", "Cobb Salad", "Fried Rice", "Denver Omelette", "Mango Curry Chicken", "Spring Rolls", "Mac and Cheese"]
# sally_languages = ["Latin", "Spanish", "German", "English", "Farsi", "Greek"]

# if sam_recipes.length > 10 && sally_languages.length > 5
#   puts "They should date"
# end

# if sam_recipes.include?('Crepes') || sally_languages.include?('French')
#   puts "They should marry"
# end

# 3 a, b, c
# users = []

# 5.times do
#   puts "What is your first name?"
#   first_name = gets.chomp
#   puts "What is your last name?"
#   last_name = gets.chomp
#   puts "What is your email?"
#   email = gets.chomp
#   acct_num = rand(10 ** 10)
#   user = {first_name: first_name, last_name: last_name, email: email, account_number: acct_num}
#   users << user
# end

# users.each do |user|
#   puts "FIRST NAME: #{user[:first_name]}"
#   puts "LAST NAME: #{user[:last_name]}"
#   puts "EMAIL: #{user[:email]}"
#   puts "ACCT #: #{user[:account_number]}"
# end

# 4
# students = []
# puts "How many students are in your class?"
# num_students = gets.chomp.to_i

# num_students.times do
#   puts "Student Name:"
#   student = gets.chomp
#   students << student
# end

# p students.shuffle!

# (num_students/2).times do
#   puts "Group: #{students.shift(2)}"
# end

# b
students = []
puts "How many students are in your class?:"
num_students = gets.chomp.to_i

num_students.times do 
  puts "Student name: "
  students << gets.chomp
end

students.shuffle!

# if odd, make a group of 3, then continue as usual
if students.length.odd?
  puts "GROUP: #{students.shift(3)}"
end
# if even, do this
(students.length/2).times do
  puts "GROUP: #{students.shift(2)}"
end


