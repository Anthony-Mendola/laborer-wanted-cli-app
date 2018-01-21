class LaborerWanted::Laborer
  attr_accessor :name, :contact, :availability, :url

  def self.today
     #Scrape craigslist and indeed and then return laborers on that data.
     LaborerWanted::LaborerScraper.new("http://craigslist.com")
     LaborerWanted::LaborerScraper.new("http://craigslist.com")
     
    laborer_1 = self.new
    laborer_1.name = "High end carpenter and tile expert"
    laborer_1.availability = "Available"
    laborer_1.contact = "(347) 512-3863"
    laborer_1.url ="https://newyork.craigslist.org/brk/res/d/high-end-carpenter-and-tile/6465087259.html"

    laborer_2 = self.new
    laborer_2.name = "Handyman/Construction/Worker"
    laborer_2.availability = "Available"
    laborer_2.contact = "dj35v-6447093851@res.craigslist.org"
    laborer_2.url ="https://newyork.craigslist.org/que/res/d/handyman-construction-worker/6447093851.html"

    [laborer_1, laborer_2]
  end

end
