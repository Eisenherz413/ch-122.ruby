class RoomsController < ApplicationController
  before_action :set_room, only: %i[show edit update destroy]
  # GET /rooms or /rooms.json
  def index
    per_page = 2
    @q = Room.ransack(
      sorts: params.fetch(:q, nil)&.fetch(:sorts, nil),
      m: 'or',
      g: {
        '0' => {
          capacity_eq: params.fetch(:q, nil)&.fetch(:capacity_eq, nil),
          price_gteq: params.fetch(:q, nil)&.fetch(:price_gteq, nil),
          price_lteq: params.fetch(:q, nil)&.fetch(:price_lteq, nil),
          m: 'and',
          g: {
            '0' => {
              orders_check_out_not_eq: params.fetch(:q, nil)&.fetch(:orders_check_out_gt, nil),
            },
            '1' => {
              orders_check_in_not_eq: params.fetch(:q, nil)&.fetch(:orders_check_in_lt, nil)
            }
          }
        },
        '1' => { orders: [nil, ""] }
      })

    @rooms = @q.result(:distinct=>true).paginate(:page => params[:page], :per_page => per_page)
  end

  # GET /rooms/1 or /rooms/1.json
  def show
    @room = Room.find(params[:id])
    @order = Order.new
  end

  # GET /rooms/new
  def new
    @room = Room.new
  end

  # GET /rooms/1/edit
  def edit
  end

  # POST /rooms or /rooms.json
  def create
    @room = Room.new(room_params)

    respond_to do |format|
      if @room.save
        params[:room][:service_ids].each do |service_id|
          unless service_id.empty?
            service = Service.find(service_id)
            @room.services << service
          end
        end
        format.html { redirect_to new_room_url, notice: "Room was successfully created"}
        format.json { render :show, status: :created, location: @room }

      else

        format.html { render :new }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rooms/1 or /rooms/1.json
  def update
    respond_to do |format|
      if @room.update(room_params)
        format.html { redirect_to edit_room_url, notice: "Room was successfully updated" }
        format.json { render :show, status: :ok, location: @room }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms/1 or /rooms/1.json
  def destroy
    if @room.destroyable?
    @room.destroy
    respond_to do |format|
      format.html { redirect_to rooms_url }
      format.json { head :no_content }
    end
    else
      redirect_to rooms_url, notice: 'You cannot delete room with working orders'
    end
  end
  def delete_image_attachment
    attachment = ActiveStorage::Attachment.find(params[:id])
    attachment.purge
    redirect_back(fallback_location: rooms_path, notice: "Photo was successfully deleted")
  end
  private

    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = Room.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def room_params
      params.require(:room).permit(:capacity, :price, :number, :title,  :cover, images: [], service_ids: [] )
    end
end
