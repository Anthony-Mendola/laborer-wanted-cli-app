class LaborerWanted::Laborer
  attr_accessor :name, :location, :date, :url

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

    laborer = self.new
    laborer.name = doc.css("a.result-title.hdrlnk").first.text
    laborer.date = doc.css("time.result-date").first.text
    laborer.location = doc.css("span.result-hood").first.text
    laborer.url = doc.css("a.result-title.hdrlnk").first.attr("href")
    laborer
  end
end
