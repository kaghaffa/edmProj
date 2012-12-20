class SongsController < ApplicationController

  # GET /songs
  # GET /songs.json
  def index
    @songs = Song.all
    @all_genres = Song.all_genres
    @selected_genres = params[:genres]
    @selected_genres ||= []

    if !@selected_genres.empty?
      @random_song = Song.find(Song.get_random_song_id(@selected_genres))
      startTime = @random_song.startTime
      @url = @random_song.url + "?autoplay=0&start=" + startTime
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @songs }
    end
  end

  # GET /songs/1
  # GET /songs/1.json
  def show
    @song = Song.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @song }
    end
  end

  # GET /songs/new
  # GET /songs/new.json
  def new
    @song = Song.new

    respond_to do |format|
      format.html 
      format.json { render json: @song }
    end
  end

  # GET /songs/1/edit
  def edit
    @song = Song.find(params[:id])
    @min = (@song.startTime).to_i / 60
    @sec = (@song.startTime).to_i % 60
  end

  # POST /songs
  # POST /songs.json
  def create
    @song = Song.new
    newSong = params[:song] 
    videoID = Song.get_youtube_video_id(newSong[:url])
    @song.url = "http://www.youtube.com/embed/" + videoID
    @song.title = Song.get_youtube_title(videoID)
    @song.startTime = (newSong[:min].to_i * 60) + newSong[:sec].to_i
    @song.genre = newSong[:genre]

    respond_to do |format|
      if @song.save
        format.html { redirect_to songs_path, notice: 'Song was successfully created.' }
        format.json { render json: @song, status: :created, location: @song }
      else
        format.html { render action: "new" }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /songs/1
  # PUT /songs/1.json
  def update
    @song = Song.find(params[:id])

    respond_to do |format|
      if @song.update_attributes(params[:song])
        format.html { redirect_to @song, notice: 'Song was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /songs/1
  # DELETE /songs/1.json
  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    flash[:notice] = "Song #{@song.title} deleted"
    respond_to do |format|
      format.html { redirect_to songs_path }
      format.json { redirect_to songs_path }
    end
  end
end
