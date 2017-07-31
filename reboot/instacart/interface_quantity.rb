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
cart = {} # HASH
item = ""
until item == "quit"
  puts
  puts "Which item? (or 'quit' to checkout)"
  print ">"
  item = gets.chomp.downcase
  if item != 'quit' && store.include?(item) && !cart.include?(item)
    puts "How many?"
    print ">"
    quantity = gets.chomp.to_i
    cart[item] = quantity
  elsif item == "quit"
  elsif !store.include?(item)
    puts "Product is not available"
  elsif cart.include?(item)
    puts "How many to add?"
    print ">"
    quantity = gets.chomp.to_i
    cart[item] += quantity
  end
#   encapsulate into a loop
end
# 4. Print the bill (checkout)
#   iterate through cart
puts "-------BILL---------"
checkout = 0
cart.each do |item, quantity|
#     find the price of each product in the store
  price = store[item]
  subtotal = quantity * price
# kiwi: 2 X 1.25€ = 2.5€
  puts "#{item}: #{quantity} X #{price}€ = #{subtotal}€"
#     compute the sum of the prices
  checkout += subtotal
end
puts "TOTAL: #{checkout}€"
puts "--------------------"
