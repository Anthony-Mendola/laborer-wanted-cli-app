class LaborerWanted::CLI

  def call
    puts "Today's Laborers Looking for Work:"
    list_laborers
    menu
    goodbye
  end

  def list_laborers
    puts <<-DOC.gsub /^\s*/, ''
    1.  High end carpenter and tile expert - Jan 18 - Contact
    2.  Handyman/Construction/Worker       - Jan 16 - Contact
    DOC
  end

def menu
  input = nil
  while input != "exit"
  puts "Enter the number of the laborer you'd like more info on or type list see the laborers again or type exit:"
  input = gets.strip.downcase
  case input
when "1"
  puts "More info on laborer 1..."
when "2"
  puts "More info on laborer 2..."
when "list"
  list_laborers
else
  puts "I did not understand that command, type list or exit"
    end
  end
end

def goodbye
  puts "See you tomorrow for more laborers!"
  end

end
