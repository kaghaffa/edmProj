class Song < ActiveRecord::Base
  attr_accessible :genre, :startTime, :title, :url

  validates :genre, :presence => true
  validates :startTime, :presence => true
  validates :title, :presence => true
  validates :url, :presence => true  

  def self.all_genres
    %w(trance house dubstep)
  end

  def self.get_random_song_id(genres)
    songIDs = []
    self.all.each do |song|
      if genres.include?(song.genre)
        songIDs << song.id
      end
    end
    idListLength = songIDs.length
    songIDs[Random.rand(idListLength)]
  end

  def self.all_ids
    ids = []
    self.all.each do |song|
      ids << song.id
    end
    ids
  end

  def self.get_youtube_title(videoID)
    newUrl = "http://www.youtube.com/watch?v=" + videoID
    doc = Nokogiri::HTML(open(newUrl))
    doc.css('title')[0].text
  end

  def self.get_youtube_video_id(url)
    regex = /youtube.com.*(?:\/|v=)([^&$]+)/
    url.match(regex)[1]
  end
end
