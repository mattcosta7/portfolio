class ImagesController < ApplicationController
  before_action :is_current_user?, except: [:index,:show]
  before_action :set_album
  before_action :set_image, only: [:show, :edit, :update, :destroy]

  # GET /images
  # GET /images.json
  def index
    respond_to do |format|
      format.html
      format.json {render json: @images}
    end
  end

  # GET /images/1
  # GET /images/1.json
  def show
    respond_to do |format|
      format.html
      format.json {render json: @image}
    end
  end

  # GET /images/new
  def new
    @image = @album.images.new
  end

  # GET /images/1/edit
  def edit
  end

  # POST /images
  # POST /images.json
  def create
    @image = @album.images.new(image_params)
    exif = EXIFR::JPEG.new(params[:image][:photo].path)
    @image.update_exif_info(exif) if exif
    respond_to do |format|
      if @image.save
        format.html { redirect_to album_image_path(@album,@image), notice: 'Image was successfully created.' }
        format.json { render :show, status: :created, location: @image }
        #
      else
        format.html { render :new }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /images/1
  # PATCH/PUT /images/1.json
  def update
    respond_to do |format|
      if @image.update(image_params)
        format.html { redirect_to album_image_path(@album,@image), notice: 'Image was successfully updated.' }
        format.json { render :show, status: :ok, location: @image }
      else
        format.html { render :edit }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1
  # DELETE /images/1.json
  def destroy
    @image.destroy
    respond_to do |format|
      format.html { redirect_to album_path(@album), notice: 'Image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = Image.find(params[:id])
      redirect_to images_path if @image.hidden && !current_user
    end

    def set_album
      if params[:album_id]
        @album = Album.find(params[:album_id])
        redirect_to :back if @album.hidden
        @images = @album.images.visible unless current_user
        @images = @album.images.all if current_user
      else
        @images = Image.visible unless current_user
        @images = Image.all if current_user
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_params
      params.require(:image).permit(:title, :tag_list, :photo, :hidden)
    end

end
