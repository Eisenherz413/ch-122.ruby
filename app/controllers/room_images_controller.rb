class RoomImagesController < ApplicationController
  before_action :set_room_image, only: %i[ show edit update destroy ]

  # GET /room_images or /room_images.json
  def index
    @room_images = RoomImage.all
  end

  # GET /room_images/1 or /room_images/1.json
  def show
  end

  # GET /room_images/new
  def new
    @room_image = RoomImage.new
  end

  # GET /room_images/1/edit
  def edit
  end

  # POST /room_images or /room_images.json
  def create
    @room_image = RoomImage.new(room_image_params)

    respond_to do |format|
      if @room_image.save
        format.html { redirect_to @room_image, notice: "Room image was successfully created." }
        format.json { render :show, status: :created, location: @room_image }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @room_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /room_images/1 or /room_images/1.json
  def update
    respond_to do |format|
      if @room_image.update(room_image_params)
        format.html { redirect_to @room_image, notice: "Room image was successfully updated." }
        format.json { render :show, status: :ok, location: @room_image }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @room_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room_images/1 or /room_images/1.json
  def destroy
    @room_image.destroy
    respond_to do |format|
      format.html { redirect_to room_images_url, notice: "Room image was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_image
      @room_image = RoomImage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def room_image_params
      params.require(:room_image).permit(:room_id, :image_id)
    end
end
