# READ RUBY DOC ON .REDUCE

# IF YOU WANT A TABLE OF THE SAME SIZE: .MAP
# IF YOU WANT A SMALLER ONE: .SELECT, .REDUCE

# Instacart
# 1. Print Welcome
puts "--------------------"
puts "Welcome to Instacart"
puts "--------------------"
puts

store = {
  "kiwi" => 1.25,
  "banana" => 0.5,
  "mango" => 4,
  "asparagus" => 9
}

puts "Available today:"
store.each do |product, price|
  puts "#{product}: #{price}€"
end
cart = []
item = ""
until item == "quit"
  puts
  puts "Which item? (or 'quit' to checkout)"
  print ">"
  item = gets.chomp.downcase
  if item != 'quit' && store.include?(item) && !cart.include?(item)
    cart << item # <=> cart.push(item)
  elsif item == "quit"
  elsif !store.include?(item)
    puts "Product is not available"
  elsif cart.include?(item)
    puts "#{item} is already is your cart"
  end
#   encapsulate into a loop
end
# 4. Print the bill (checkout)
#   iterate through cart
# checkout = 0
# cart.each do |item|
# #     find the price of each product in the store
#   price = store[item]
# #     compute the sum of the prices
#   checkout += price
# end
checkout = cart.reduce(0) { |sum, item| sum += store[item] }
puts
puts "-------BILL---------"
puts "TOTAL: #{checkout}€"
puts "--------------------"
