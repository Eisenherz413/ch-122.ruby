class RoomsController < ApplicationController
  before_action :set_room, only: %i[ show edit update destroy ]

  # GET /rooms or /rooms.json
  def index
    per_page = 2
    #paginate(:page => params[:page], :per_page => per_page).
    #params[:q] = {:orders_blank => true} # if params[:q]
    # @q = Room.includes(:orders).ransack(params[:q])
    #@q = Room.paginate(:page => params[:page], :per_page => per_page).ransack(:m => "or", params[:q])
    @q = Room.paginate(:page => params[:page], :per_page => per_page).ransack(params[:q])
    # @f = Room.paginate(:page => params[:page], :per_page => per_page).ransack(orders: [nil, ""])
    # .search(:m => 'or', :param_name_eq => -1, :param_name_null => true)
    # if params[:orders_check_in_eq].present?
    #  @q.build_grouping({:m => 'or', :orders_check_in_eq => params[:orders_check_in_eq], :orders_check_in_eq_null => true})
    #  #   @q.build_grouping({:m => 'or', :orders_check_in_eq => params[:orders_check_in_eq], :orders_check_in_eq => true})
    #end
    # @rooms = @q.result.includes(:orders) + @f.result
    # @rooms = @f.result
    @rooms = @q.result
    # @rooms = @q.result
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
        format.html { redirect_to @room, notice: "Room was successfully created." }
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

  # def search
  #   index
  #   render :index
  # end

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
