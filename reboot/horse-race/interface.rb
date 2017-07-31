# Horse Race
require_relative "race.rb"
# Pseudo-code:
# 1. Print welcome
puts "Welcome to Le Wagon horse race!"
puts
# 2. Get horses
horses = ["Tempête", "Tornado Mélenchon", "Reactor 5000", "Brocéliande du Poitou", "Bouboule"]
# 3. Get user's bet
#   display horses' list
display_horses(horses)
#   ask user for a horse
puts
puts "What is your bet? (1-5)"
print ">"
index = gets.chomp.to_i - 1
#   store it in a variable
bet = horses[index]
puts "You bet on #{bet}"
#   loop on 4 laps
shuffled_horses = []
4.times do |lap|
  puts
  puts "Lap #{lap + 1}:"
#     shuffle horses array
  shuffled_horses = horses.shuffle
#     iterate on horses
  display_horses(shuffled_horses)
  sleep 2
end
# 5. Print results
#   display first horse
winner = shuffled_horses.first
puts
puts "The winner is #{winner}"
#   check if users' bet matches winner
if winner == bet
  puts "You win!"
else
  puts "You lose!"
end

# 5. Print results
#   display first horse
#   check if users' bet matches winner
# => display first horse
# => if answer == first horse, (s)he wins
# interface.rb

# # Pseudo-code:
# # 1. Print welcome
# puts "Welcome to the races!"
# # 2. Get horses 🐴
#   # horses = []
# horses = ["Tempete", "Tornado Melanchon", "Reactor 5000", "Broceliande du Poitu", "Bouboule"]
# # 3. Get user's bet
# # display horses list
# horses.each_with_index do |horse, index|
#   puts "#{index + 1} - #{horse}"
# end
# puts "Which horse do you want to bet on (1-5)?"
# print ">"
# index = gets.chomp.to_i
# bet = horses[index - 1]
# puts "You bet on #{bet}"
# # 4. Run the race 🐴
# 4.times do |lap|
#   puts "Lap #{lap + 1}:"
#    # shuffle the horses
#   shuffled_horses = horses.shuffle
#   # iterate on horses .each_with_index
#   shuffled_horses.each_with_index do |horse, index|
#     # display position and name
#     puts "#{index + 1} - #{horse}"
#   end
# end
# # lap_counter = 0
# # until lap_counter == 4
# #   horses.shuffle
# #   puts horses.each_with_index {|horse, index| puts "#{index - 1}. #{horse}"}
# #   lap_counter += 1
# # end


# # 5. Print results
# puts "The winner is #{horses.first}"
# if bet == horses.first
#   puts "You win!"
# else
#   puts "You lose :("
# end
# # => display first horse
# # => if answer == first horse, (s)he wins


