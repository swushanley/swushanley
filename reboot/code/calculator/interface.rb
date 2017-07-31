# calculator

# ask a user number
# store it in a variable
# ask user a second number
# store it in a variable
# compute the sum of the 2 numbers
# display the result

# puts "First number?"
# print ">"

# first_number = gets.chomp.to_f
# puts "Choose operator [+][-][x][/]"
# print ">"
# operator = gets.chomp
# puts "Second number?"
# print ">"
# second_number = gets.chomp.to_f
# if operator == "+"
#  result = first_number + second_number
# elsif operator == "-"
#   result = first_number - second_number
# elsif operator == "x"
#   result = first_number * second_number
# elsif operator == "/"
#   result = first_number / second_number
# else
#   puts "invalid operator"
# end
# unless result == nil
#   puts "The result is #{result}"

#ANOTHER OPTION:
# Calculator

# ask user a number
require_relative './calculator.rb'
answer = "ON"
until answer == "OFF"
  puts "First number?"
  print ">"
  first_number = gets.chomp.to_f
  puts "Choose operator [+][-][x][/]"
  print ">"
  operator = gets.chomp
  # ask user for operator
  # store it in a variable
  # ask user a second number
  puts "Second number?"
  print ">"
  # store it in a variable
  second_number = gets.chomp.to_f
  # call calculator method
  result = calculator(first_number, second_number, operator)
  # check for operator (condition)2
  # compute the result
  # display the result
  unless result == nil
    puts "The result is #{result}"
    puts "AC / OFF?"
    print ">"
    answer = gets.chomp
  end
end
puts "Goodbye!"
