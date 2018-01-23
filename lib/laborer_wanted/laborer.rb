
class LaborerWanted::Laborer
  attr_accessor :name, :location, :date, :url

  def self.today
       #Scrape craigslist and indeed and then return laborers on that data.
      self.scrape_laborers
    end

    def self.scrape_laborers
      laborers = []

  laborers << self.scrape_craigslist

  laborers
   end

   def self.scrape_craigslist

  doc = Nokogiri::HTML(open("https://newyork.craigslist.org/search/res?query=construction+laborer"))

   laborer = self.new
   row = doc.css('li.result-row')
   row.each do |laborer|
  laborers << {name: laborer.css('a.result-title.hdrlnk').text.strip}
   end
    laborers
   end

 end
