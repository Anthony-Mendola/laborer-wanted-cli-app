class LaborerWanted::Laborer
  attr_accessor :name, :contact, :availability, :url

  def self.today
     #returns instances of laborers
    #puts <<-DOC.gsub /^\s*/, ''
    #1.  High end carpenter and tile expert - Available -  (347) 512-3863
    #2.  Handyman/Construction/Worker       - Available - dj35v-6447093851@res.craigslist.org
    #DOC
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
