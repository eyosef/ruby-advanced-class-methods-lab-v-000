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

  def self.new_from_filename(song) #working on
    song = .song.new.gsub(/.[-].+/, "") #thundercat
    song.gsub(/.mp3/, "").gsub(/.+[-]./, "") #for love i come

  end #method

  def self.all #created by lab
    @@all
  end

  def save #created by lab
    self.class.all << self
  end

end #class
