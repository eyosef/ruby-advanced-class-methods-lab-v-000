require 'pry'
class Song
  attr_accessor :name, :artist_name, :song, :artist
  @@all = []

  def self.create #passed
    song = self.new
    @@all << song
    return song
  end

  def self.new_by_name(name) #passed
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(name) #passed
    song = self.create
    song.name = name
    song
  end

  def self.find_by_name(name) #passed
    self.all.detect{|song| song.name == name}
  end

  def self.find_or_create_by_name(name) #passed
    self.create_by_name(name)
    self.find_by_name(name)
  end

  def self.alphabetical #passed
    self.all.sort_by { |song| song.name }
  end

  def self.parse_filename(song) #my own creation - mwahahaha
    info = song.gsub(/.mp3/, "").split(" - ")
    info[0] = artist_name
    info[1] = song_name

  end

  def self.new_from_filename(song) #working on
    # self.all.each do |song, artist_name|
    #   song.name = info[0]
    #   song.artist_name = info[1]
    # end
        info = song.gsub(/.mp3/, "").split(" - ") #removed .mps and parsed string based on '-'
        info[0] = artist_name
        info[1] = song.name
        binding.pry


  end #method

  def self.all #created by lab
    @@all
  end

  def save #created by lab
    self.class.all << self
  end

end #class
