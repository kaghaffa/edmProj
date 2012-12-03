require 'open-uri'

module SongsHelper
  # this method will embed the code from the partial
  def youtube_video(url)
    render :partial => 'songs/video', :locals => { :url => url }
  end 

end
