class LaborerWanted::Laborer
  attr_accessor :name, :location, :date, :url, :post

  #Stores all laborer objects created.
  @@all = []

  #Initializes the object directly from the hash.
  def initialize(laborer_hash)
    laborer_hash.each_key{|k| self.send("#{k}=", laborer_hash[k])}
    @@all << self
  end

  def self.all
    @@all
  end
end
