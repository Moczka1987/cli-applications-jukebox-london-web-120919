songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def list(songs)
  songs.each_with_index {|song, index| puts "#{index + 1}. #{song}"} 
end 

def play(songs)
  puts "Please enter a song name or number: "
  user_choice = gets.strip 
    if songs.include?(user_choice) 
    puts "Playing #{user_choice}"
    elsif (1..9).to_a.include?(user_choice.to_i)
    puts "Playing #{songs[user_choice.to_i - 1]}"
  else 
    puts "Invalid input, please try again."
  end 
end


  def exit_jukebox 
    puts "Goodbye"
  end 

def run(songs)
  puts "Please enter a command: "
  command = gets.strip 
  if command == "help"
    help 
  elsif command == "list"
    list(songs)
  elsif command == "play"
   play(songs)
  elsif command == "exit"
   exit_jukebox
end
end


    