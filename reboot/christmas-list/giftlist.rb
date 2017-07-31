require 'csv'

def display_list(array)
  puts
  puts "My giftlist:"
  array.each_with_index do |gift, index|
    check = gift[:bought] ? "X" : " "
    puts "#{index + 1} - #{gift[:name]} [#{check}]"
  end
  puts
end

def get_number
  puts "Which one?"
  print ">"
  return gets.chomp
end

def save_to_csv(giftlist)
  csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
  filepath    = 'giftlist.csv'

  CSV.open(filepath, 'wb', csv_options) do |csv|
    csv << ['Name', 'Bought']
    giftlist.each do |gift|
      csv << [gift[:name], gift[:bought]]
    end
  end
end

def load_from_csv
  csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
  filepath    = 'giftlist.csv'

  giftlist = []
  if File.exist?(filepath)
    CSV.foreach(filepath, csv_options) do |row|
      giftlist << { name: row['Name'], bought: row["Bought"] == "true"}
    end
  end
  return giftlist
end
