require 'open-uri'

module SongsHelper
  # this method will embed the code from the partial
  def youtube_video(url)
    render :partial => 'songs/video', :locals => { :url => url }
  end 

  def get_youtube_title(url)
    newUrl = "http://www.youtube.com/watch?v=" + url[29..url.size]
    doc = Nokogiri::HTML(open(newUrl))
    doc.css('title')[0].text
  end
end
