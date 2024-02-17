total_points = 0
rooms = { "Room 1" => 5, "Room 2" => 10, "Room 3" => 15 }

loop do
  puts "Welcome! You have #{total_points} points."
  puts "Choose a room (1-3) or 'exit' to end: "
  input = gets.chomp.downcase
  break if input == 'exit'
  choice = input.to_i
  if (1..3).include?(choice)
    total_points += rooms.values[choice - 1]
    puts "You entered Room #{choice} and earned #{rooms.values[choice - 1]} points."
  else
    puts "Invalid choice!"
  end
end

puts "Game over! Total points: #{total_points}"