class ServicesController < ApplicationController
  before_action :set_service, only: %i[ show edit update destroy ]

  # GET /services or /services.json
  def index
    @services = Service.all
  end

  # GET /services/1 or /services/1.json
  def show
  end

  # GET /services/new
  def new
    @service = Service.new
  end

  # GET /services/1/edit
  def edit
  end

  # POST /services or /services.json
  def create
    @service = Service.new(service_params)

    respond_to do |format|
      if @service.save
        format.html { redirect_to @service, notice: "Service was successfully created." }
        format.json { render :show, status: :created, location: @service }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /services/1 or /services/1.json
  def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to @service, notice: "Service was successfully updated." }
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1 or /services/1.json
  def destroy
    permission = false
    @service.rooms.each do |room|
       Order.find(room.orders.ids).each do |model|
         status = Order.statuses[model.status]
         if status != 3 && status != 4
           permission = true
         redirect_to services_url, notice: 'You cannot delete services with active orders'
         return
          end
       end
       end
    if permission === false
      @service.destroy
      respond_to do |format|
        format.html { redirect_to services_url, notice: "Service was successfully destroyed." }
        format.json { head :no_content }
          end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_params
      params.require(:service).permit(:name, :description, :icon_url)
    end
  end
