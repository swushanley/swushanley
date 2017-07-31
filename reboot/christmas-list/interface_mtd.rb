# Christmas list
require_relative "giftlist.rb"
require_relative "etsy_scraper.rb"
# 1. Welcome
puts "🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 "
puts "🎅    Welcome to your Christmas giftlist   🎅 "
puts "🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 🎅 "
puts
# 2. Display menu (list / add / delete / mark )
giftlist = load_from_csv
action = "add"
until action == "quit"
  puts "Which action [list|add|delete|mark|quit|etsy]?"
  print ">"
  # 3. Get user action
  action = gets.chomp
  # 4. Perform the right action
  case action
  when "add"
    puts "Gift name?"
    print ">"
    gift_name = gets.chomp
    gift = { name: gift_name, bought: false } # build a hash of gift
    giftlist << gift
    puts "#{giftlist.last[:name]} has been added to your giftlist"
    puts
  when "list"
    display_list(giftlist)
  when "delete"
    display_list(giftlist)
    answer = get_number
    if answer =~ /\A[1-9]\d*\z/ && answer.to_i <= giftlist.length
      index = answer.to_i - 1
      removed_gift = giftlist.delete_at(index)
      puts "#{removed_gift[:name]} has been removed from your giftlist"
    else
      puts "#{answer} is not a valid number"
    end
  when "mark"
    display_list(giftlist)
    index = get_number.to_i - 1
    giftlist[index][:bought] = true
    puts "#{giftlist[index][:name]} has been marked as bought"
  when "etsy"
    etsy_ideas = scrap
    etsy_ideas.each_with_index do |idea, index|
      puts "#{index + 1} - #{idea}"
    end
    # ask user which idea to add
    # find idea in etsy_ideas
    index = get_number.to_i - 1
    gift_idea = {name: etsy_ideas[index], bought: false}
    giftlist << gift_idea
    puts "#{gift_idea[:name]} has been added to your giftlist"
    # build a gift hash
    # add gift to giftlist
  when "quit"
    puts "Goodbye"
  else
    puts "Wrong action, try again"
  end
end
