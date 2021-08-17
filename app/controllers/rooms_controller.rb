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
        },
        '1' => { orders: [nil, ""] }
      })

    @rooms = @q.result.paginate(:page => params[:page], :per_page => per_page)
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
        format.html { redirect_to @room, notice: 'Room was successfully created.' }
        format.json { render :show, status: :created, location: @room }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rooms/1 or /rooms/1.json
  def update
    respond_to do |format|
      if @room.update(room_params)
        format.html { redirect_to @room, notice: "Room was successfully updated." }
        format.json { render :show, status: :ok, location: @room }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms/1 or /rooms/1.json
  def destroy
    @room.destroy
    respond_to do |format|
      format.html { redirect_to rooms_url, notice: "Room was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = Room.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def room_params
      params.require(:room).permit(:capacity, :price, :number)
    end
end
