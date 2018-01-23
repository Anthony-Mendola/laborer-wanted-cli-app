class LaborerWanted::Laborer
  attr_accessor :name, :location, :date, :url

    def self.today
       #Scrape craigslist then return laborers on that data.
      self.scrape_craigslist
    end

    #def self.scrape_laborers
      #laborers = []

    #  laborers << self.scrape_craigslist

    #  laborers
   #end

  def self.scrape_craigslist
  doc = Nokogiri::HTML(open("https://newyork.craigslist.org/search/res?query=construction+laborer"))

  laborer = self.new

  laborers = []
  doc.css('li.result-row'). each do |laborer|
    laborer_name = laborer.css('a.result-title.hdrlnk').text.strip
    laborer_date = laborer.css("time.result-date").text.strip
    laborer_location = laborer.css("span.result-hood").text.strip
    laborer_url = laborer.css("a.result-title.hdrlnk").attr("href").value

    laborers << {name: laborer_name, date: laborer_date, location: laborer_location, url: laborer_url}
end
laborers

 end
end
