# Instacart
require_relative 'instacart.rb'
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
  item = ask_for_item
  if item != 'quit' && store.include?(item) && !cart.include?(item)
    quantity = ask_for_quantity
    cart[item] = quantity
  elsif item == "quit"
  elsif !store.include?(item)
    puts "Product is not available"
  elsif cart.include?(item)
    quantity = ask_for_quantity
    cart[item] += quantity
  end
end
# 4. Print the bill (checkout)
#   iterate through cart
puts "-------BILL---------"
checkout = compute_bill(cart, store)
puts "TOTAL: #{checkout}€"
puts "--------------------"
