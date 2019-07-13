# Add your code here
SONGS = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapman - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

class String
    def is_i?
       !!(self =~ /\A[-+]?[0-9]+\z/)
    end
end

def play(songs)
  song = gets.chomp
  if song.is_i? && song.to_i <= songs.length
    son = songs[song.to_i-1]
    puts "Playing #{son}"
    return
  else
    songs.each do |son|
      if son == song
        puts "Playing #{son}"
        return
      end
    end
  end
  puts "/Invalid input, please try again/"
end

def list(songs)
  num = 0
  songs.each do |song|
    num += 1
    puts "#{num}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  answer = gets.chomp
  if answer == 'play'
    puts "Please enter a song name or number:"
    play(songs)
  elsif answer == 'help'
    help
    exit_jukebox
  elsif answer == 'list'
    list(songs)
  elsif answer == 'exit'
    exit_jukebox
  end
end


# until answer == 'exit'
#   if answer == 'play'
#     play(songs)
#   elsif answer == 'help'
#     help
#   elsif answer == 'list'
#     list(songs)
#   end
# end
# exit_jukebox
