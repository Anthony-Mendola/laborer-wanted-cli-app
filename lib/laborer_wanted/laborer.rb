class LaborerWanted::Laborer
  attr_accessor :name, :location, :date, :url, :post

  @@all = []

  def initialize(laborer_hash)
    laborer_hash.each_key{|k| self.send("#{k}=", laborer_hash[k])}
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  #def sorted_laborers
  #  @@all.sort_by{ |laborer| laborer.date}
#  end

end
