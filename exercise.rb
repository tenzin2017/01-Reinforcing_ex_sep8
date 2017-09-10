array = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

def available_seat(array)
  hash1 = {}
  hash2 = {}
  array.each_with_index do |row,index1|
     hash1[row]=index1
    row.each_with_index do|seat, index2|
      hash2[seat] = index2
      if seat == nil
        puts "Row  #{index1 + 1}  seat #{index2 + 1} is free"
        puts "Do you want to sit there ? (y/n)"
        user_choice = gets.chomp
        if user_choice == "y"
          puts "What is your name ?"
          user_name = gets.chomp
          row[index2] = user_name
        else
          false
        end
      end
    end
  end
  puts array.inspect
end

available_seat(array)
