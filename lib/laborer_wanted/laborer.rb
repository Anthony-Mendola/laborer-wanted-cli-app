class LaborerWanted::Laborer
  attr_accessor :name, :contact, :availability, :url

  def self.today
     #Scrape craigslist and indeed and then return laborers on that data.
    self.scrape_laborers
  end

  def self.scrape_laborers
    laborers = []
    # Go to craigslist, find the laborers
    # Extract the properties
    # Instantiate a laborer listing

    # Go to indeed

   laborers
  end

end
