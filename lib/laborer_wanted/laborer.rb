class LaborerWanted::Laborer
  attr_accessor :name, :location, :date, :url

@@all = []

def initialize(name=nil, location=nil, date=nil, url=nil)
@@all << self
end

def self.all
  @@all
  end
end
