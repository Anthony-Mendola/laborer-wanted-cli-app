class LaborerWanted::Laborer
  attr_accessor :name, :contact, :availability, :url

  def self.today
     #Scrape craigslist and indeed and then return laborers on that data.
    self.scrape_laborers
  end

  def self.scrape_laborers
    laborers = []

    laborers << self.scrape_craigslist
  #  laborers << self.scrape_indeed
    # Go to craigslist, find the laborers
    # Extract the properties
    # Instantiate a laborer listing

    # Go to indeed...

   laborers
  end

  def self.scrape_craigslist
    doc = Nokogiri::HTML(open("https://newyork.craigslist.org/search/res?query=construction+laborer"))
    name = doc.css("a.result-title.hdrlnk").first.text
    availability = doc.css("time.result-date").first.text
    location = doc.css("span.result-hood").first.text
    url = doc.css("a.result-title.hdrlnk").first.attr("href")
    binding.pry
  end
end
