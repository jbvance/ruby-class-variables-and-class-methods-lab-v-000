class Song

  attr_accessor :name, :artist, :genre

  # Class level variables
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@genres << genre
    @@artists << artist
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.genres
    returnArr = []
    @@genres.each do |genre|
      returnArr >> genre if !@@genres.include?(genre)
    end
    returnArr
  end

  def self.artists
    returnArr = []
    @@artists.each do |artist|
      returnArr >> artist if !@@artists.include?(artist)
    end
    returnArr
  end

end
