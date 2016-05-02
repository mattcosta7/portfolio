class AlbumsController < ApplicationController
  before_action :is_current_user?, except: [:index,:show]
  before_action :set_album, only: [:show, :edit, :update, :destroy]

  # GET /photographies
  # GET /photographies.json
  def index
    @albums = Album.visible
    respond_to do |format|
      format.html
      format.json {render json: @albums}
    end
  end

  # GET /photographies/1
  # GET /photographies/1.json
  def show
    @images = @album.images.visible
    respond_to do |format|
      format.html
      format.json {render json: @album}
    end
  end

  # GET /photographies/new
  def new
    @album = Album.new
  end

  # GET /photographies/1/edit
  def edit
  end

  # POST /photographies
  # POST /photographies.json
  def create
    @album = Album.new(album_params)

    respond_to do |format|
      if @album.save
        format.html { redirect_to @album, notice: 'Album was successfully created.' }
        format.json { render :show, status: :created, location: @album }
      else
        format.html { render :new }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photographies/1
  # PATCH/PUT /photographies/1.json
  def update
    respond_to do |format|
      if @album.update(album_params)
        format.html { redirect_to @album, notice: 'Album was successfully updated.' }
        format.json { render :show, status: :ok, location: @album }
      else
        format.html { render :edit }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photographies/1
  # DELETE /photographies/1.json
  def destroy
    @album.destroy
    respond_to do |format|
      format.html { redirect_to photographies_url, notice: 'Album was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album
      @album = Album.find(params[:id])
      redirect_to :back if @album.hidden
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def album_params
      params.require(:album).permit(:name, :location, :hidden)
    end
end
