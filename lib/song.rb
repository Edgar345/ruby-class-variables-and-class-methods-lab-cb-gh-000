class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize name, artist, genre
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  #class method
  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    hash_count = {}
    #["rap", "rap", "pop"]

    @@genres.each do |genre|
      hash_count[genre] = (hash_count[genre]) ? hash_count[genre] + 1 : 1
    end
    hash_count
  end

  def self.artist_count
    hash_count = {}
    #["rap", "rap", "pop"]

    @@artists.each do |artist|
      hash_count[artist] = (hash_count[artist]) ? hash_count[artist] + 1 : 1
    end
    hash_count
  end
end
