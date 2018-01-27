class LaborerWanted::Scraper

  def self.today
     #Scrape craigslist then return laborers on that data.
    self.scrape_craigslist
  end

  def self.scrape_craigslist
  doc = Nokogiri::HTML(open("https://newyork.craigslist.org/search/res?sort=date&query=construction%20laborer"))

  #laborer = self.new

  laborers = []
  doc.css('li.result-row'). each do |laborer|
    laborer_name = laborer.css('a.result-title.hdrlnk').text.strip
    laborer_date = laborer.css("time.result-date").text.strip
    laborer_location = laborer.css("span.result-hood").text.strip
    laborer_url = laborer.css("a.result-title.hdrlnk").attr("href").value

    post = Nokogiri::HTML(open(laborer_url))
    laborer_post = post.css("#postingbody")
  

    laborers << {name: laborer_name, date: laborer_date, location: laborer_location, url: laborer_url, post: laborer_post}
    end

    laborers.each{|laborer| LaborerWanted::Laborer.new(laborer).save}
    end
  end
