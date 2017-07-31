def display_horses(horse_names)
  horse_names.each_with_index do |horse, index|
    puts "#{index + 1} - #{horse}"
  end
end

# OR, with a simplified interface

# def display_horses(horse_names)
#   horse_names.each_with_index do |horse, index|
#     puts "#{index + 1} - #{horse}"
#   end
# end

# def run(horses)
#   shuffled_horses = []
#   4.times do |lap|
#     puts
#     puts "Lap #{lap + 1}:"
#   #     shuffle horses array
#     shuffled_horses = horses.shuffle
#   #     iterate on horses
#     display_horses(shuffled_horses)
#     sleep 2
#   end
#   return shuffled_horses
# end
