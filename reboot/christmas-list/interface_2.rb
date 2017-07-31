# Christmas list
# 1. Welcome
puts "🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 "
puts "🎅    Welcome to your Christmas giftlist   🎅 "
puts "🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 "
puts
# 2. Display menu (list / add / delete / mark )
giftlist = []
action = "add"
until action == "quit"
  puts "Which action [list|add|delete|quit]?"
  print ">"
  # 3. Get user action
  action = gets.chomp
  # 4. Perform the right action
  #  conditions on action
  #   add
  #     ask user for gift
  #     store it in giftlist
  case action
  when "add"
    puts "Which item?"
    item = gets.chomp
    giftlist << item
    puts "#{item} has been added to your gift list"
  #     confirmation message
  #   list
  when "list"
    giftlist.each_with_index do |gift, index|
      puts "#{index + 1}. #{gift}"
  end
  #     TODO
  #   delete
  when "delete"
    puts "Your list is:"
    giftlist.each_with_index do |gift, index|
      puts "#{index + 1}. #{gift}"
    end
    puts "Which gift number would you like to remove?"
    item = gets.chomp.to_i - 1
    giftlist.delete_at(item)
  #     display list
  #     ask user for gift number to delete
  #     remove gift from giflist
  when "quit"
    puts "Goodbye"
  else
    puts "Wrong action, try again"
  end
end


# => user_action = gets.chomp
# 4. Perform the right action
# => case user_action
# when "add"
# => add gift to list
# end of loop
# puts "Goodbye"
