class Song < ActiveRecord::Base
  attr_accessible :genre, :startTime, :title, :url

  validates :genre,       :presence => true
  validates :startTime,   :presence => true
  validates :title,       :presence => true
  validates :url,         :presence => true  

end
