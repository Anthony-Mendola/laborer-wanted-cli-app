class LaborerWanted::CLI

  def call
    puts "Today's Laborers Looking for Work:"
    list_laborers
    menu
    goodbye
  end

  def list_laborers

    @laborers = LaborerWanted::Laborer.today
    @laborers.each.with_index(1) do |laborer, i|
      puts "#{i}, #{laborer.name} - #{laborer.date} - #{laborer.location}"
  end
end

def menu
  input = nil
  while input != "exit"
  puts "Enter the number of the laborer you'd like more info on or type list see the laborers again or type exit:"
  input = gets.strip.downcase

  if input.to_i > 0
  the_laborer = @laborers[input.to_i-1]
  puts "#{the_laborer.name} - #{the_laborer.date} - #{the_laborer.location}"
  elsif input == "list"
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
