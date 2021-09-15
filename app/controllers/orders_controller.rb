class OrdersController < ApplicationController
  before_action :set_order, only: %i[ show edit update destroy ]
  load_and_authorize_resource

  # GET /orders or /orders.json
  def index
    @orders = Order.all.order(:check_in).paginate(:page => params[:page], :per_page => 7)
  end

  # GET /orders/1 or /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders or /orders.json
  def create
    orders = Order.where(check_in: order_params[:check_in], check_out: order_params[:check_out])
      @order = Order.new(order_params)
    respond_to do |format|
        if @order.save && orders.length == 0
          UserMailer.with(order: @order, email: current_user.email).new_order_email.deliver_later
          flash[:success] = "Thank you for your order! We'll get contact you soon!"
          format.html { redirect_to @room, alert: "Order was successfully created."  }
          format.json { render :show, status: :created, location: @order }
        elsif orders.length > 0
          UserMailer.with(order: @order, email: current_user.email).new_order_email.deliver_later
          format.html { redirect_to request.referer, alert: "Order was not successfully created." }
          format.json { render :show, status: :conflict, location: @room }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @order.errors, status: :unprocessable_entity }
        end
      end
  end

  # PATCH/PUT /orders/1 or /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: "Order was successfully updated." }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1 or /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: "Order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:check_in, :check_out, :total_price, :room_id, :user_id, :status)
    end
end
