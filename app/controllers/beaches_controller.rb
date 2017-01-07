class BeachesController < ApplicationController
  before_action :set_beach, only: [:show, :edit, :update, :destroy]
  
  def index
    @beaches = Beach.all
  end
  
  def show
  end
  
  def new
    @beach = Beach.new
  end
  
  def edit
  end
  
  def create
    @beach = Beach.new(beach_params)

    respond_to do |format|
      if @beach.save
        format.html { redirect_to @beach, notice: 'Beach was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
  
  def update
    respond_to do |format|
      if @beach.update(beach_params)
        format.html { redirect_to @beach, notice: 'Beach was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end
  
  def destroy
    @beach.destroy
    respond_to do |format|
      format.html { redirect_to beaches_url, notice: 'Beach was successfully destroyed.' }
    end
  end
  
  def add_pin
    @beach = Beach.first
    
    respond_to do |format|
      format.js {}
    end
  end
  
  def add_pins
    @beaches = Beach.all.map{ |beach| [beach.name, beach.lat.to_f, beach.lng.to_f] };
  end
  
  def remove_all_pins
    respond_to do |format|
      format.js {}
    end
  end

  private
    def set_beach
      @beach = Beach.find(params[:id])
    end
  
    def beach_params
      params.require(:beach).permit(:name, :lat, :lng)
    end
end
