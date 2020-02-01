require 'pry'
class Song 
  attr_accessor :name, :artist, :genre 
  @@count = 0
  @@genres =[]
  @@artists =[]
  def initialize(song_name,artist,genre)
    @name = song_name 
    @artist = artist 
    @genre = genre 
    @@count +=1
    @@genres << genre
    @@artists << artist
  end
  
 def self.count 
   @@count
 end
 def self.genres 
   @@genres.uniq
end
def self.artists
  @@artists.uniq
end
def self.genre_count
track_genres = Hash.new(0)
genres.each do |genre|
  track_genres[genre] +=1 if track_genres.has_key?(genre)
  track_genres[genre] +=1 
end
track_genres
end
def self.artist_count
track_artist = Hash.new(0)
artists.each do |artist|
  track_artist[artist] +=1 if track_artist.has_key?(artist)
  track_artist[artist] +=1 
end
track_artist
end
end