# interface.rb

# Pseudo-code
# 1. Print Welcome
puts "Welcome to the supermarket"
# 2. Define your store (what items are for sale?)
# => store = hash with product name as keys and prices as values
# => display what's in the store
STORE = {
  "kiwi" => 1.25,
  "banana" => 0.5,
  "mango" => 4.0,
  "asparagus" => 9.0
}
# => initialize cart
cart = []
puts "In our store today: #{STORE}"
# => ask user for products to add
# 3. Get items from the user (shopping)
item = ""
until item == "quit"
  puts "Which item (or 'quit' to checkout)?"
  item = gets.chomp
  if (STORE.key? item) && (!cart.include? item)
    cart << item
  # => check if product is available
  # => check if product is not in the cart
  # => store it in the cart
  # => encapsulate in a loop
    puts "Press enter to add another item, or write 'quit' to get the bill"
    item = gets.chomp
  end
end
# puts cart
final_cart = 0
cart.each_value do |value|
  final_cart += value
end

puts "Total: #{final_cart}"

# 4. Print the bill (checkout)
# => iterate through cart
# => find the price of each product
# => compute the sum of the prices


