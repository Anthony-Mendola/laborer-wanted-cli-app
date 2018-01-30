class LaborerWanted::Scraper

  def self.scrape_craigslist
    doc = Nokogiri::HTML(open("https://newyork.craigslist.org/search/res?sort=date&nearbyArea=168&nearbyArea=170&nearbyArea=249&nearbyArea=250&nearbyArea=349&nearbyArea=561&query=construction%20laborer&searchNearby=2"))
    laborers = []
    doc.css('li.result-row'). each do |laborer|
      laborer_name = laborer.css('a.result-title.hdrlnk').text.strip
      laborer_date = laborer.css("time.result-date").text.strip
      laborer_location = laborer.css("span.result-hood").text.strip
      laborer_url = laborer.css("a.result-title.hdrlnk").attr("href").value

    post = Nokogiri::HTML(open(laborer_url))
    laborer_post = post.css("#postingbody").text.strip

    laborers << {name: laborer_name, date: laborer_date, location: laborer_location, url: laborer_url, post: laborer_post}
    end
    #Takes each laborer from array and turns them into a new individual Laborer object.
    laborers.each{|laborer| LaborerWanted::Laborer.new(laborer)}
    end
  end
