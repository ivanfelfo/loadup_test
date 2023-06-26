class ServicesController < ApplicationController
  def index
    @services = Service.all

    respond_to do |format|
      format.json { render json: @services }
      format.html { render 'services/index' }
    end
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)

    if @service.save
      redirect_to services_path, notice: 'Service booking created successfully.'
    else
      respond_to do |format|
        format.json { render json: @service.errors, status: :unprocessable_entity }
        format.html { render :new }
      end
    end
  end

  def price_calculator
    if request.post?
      @price = Service.calculate_total_cost(params[:animal_type], params[:duration])
      render 'services/price_calculator'
    else
      render 'services/price_calculator'
    end
  end

  private

  def service_params
    params.require(:service).permit(:first_name, :last_name, :animal_name, :animal_type, :hours_requested, :date_of_service)
  end
end
