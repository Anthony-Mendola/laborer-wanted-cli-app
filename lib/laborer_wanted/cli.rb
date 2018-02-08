class LaborerWanted::CLI

# This method is called initially by the CLI when the gem is first run.
  def call
    make_laborers
    list_laborers
    menu
    goodbye
  end

# Uses the Scraper class to scrape info from craigslist.
  def make_laborers
    LaborerWanted::Scraper.scrape_craigslist
  end

# Welcomes the user and prints the list of laborers.
  def list_laborers
    puts ""
    puts "**********Laborers Looking for Work**********"
    puts ""
    @laborers = LaborerWanted::Laborer.all
    @laborers.first(10).each.with_index(1) do |laborer, i|
    #  if i <= 10
        puts "#{i}, #{laborer.name} - #{laborer.date} - #{laborer.location}"
    #  end
    end
  end

 # Displays the menu repeatedly and perform actions based on input until the user exit's the program.
  def menu
    input = nil
    while input != "exit"
      puts ""
      puts "Enter the number of the laborer you'd like more info on or type list see the laborers again or type exit:"
      input = gets.strip.downcase
      # Handles the action of displaying more detail about a given laborer.
      if input.to_i > 0
        the_laborer = @laborers[input.to_i-1]
        puts ""
        puts "#{the_laborer.name} - #{the_laborer.date} - #{the_laborer.location} - #{the_laborer.url} - #{the_laborer.post}"
      elsif input == "list"
        list_laborers
      elsif input != "exit"
        puts ""
        puts "I did not understand that command, type list or exit"
        end
      end
    end

    def goodbye
      puts "See you tomorrow for more laborers!"
      end
    end
