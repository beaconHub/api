class BeaconsController < ApplicationController
  before_action :set_beacon, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :destroy]

  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

  # GET /search/near/:lat/lng(/:range)
  # GET /search/near/:lat/lng(/:range).json
  def near
    range = if params[:range] then params[:range] else 3 end
    @beacons = Beacon.near([params[:lat], params[:lng]], range, :units => :km)
    render :index
  end

  # GET /beacons
  # GET /beacons.json
  def index
    @beacons = Beacon.all
  end

  # GET /beacons/1
  # GET /beacons/1.json
  def show
  end

  # GET /beacons/new
  def new
    @beacon = Beacon.new
  end

  # GET /beacons/1/edit
  def edit
  end

  # POST /beacons
  # POST /beacons.json
  def create
    @beacon = Beacon.new(beacon_params)

    respond_to do |format|
      if @beacon.save
        format.html { redirect_to @beacon, notice: 'Beacon was successfully created.' }
        format.json { render :show, status: :created, location: @beacon }
      else
        format.html { render :new }
        format.json { render json: @beacon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beacons/1
  # PATCH/PUT /beacons/1.json
  def update
    respond_to do |format|
      if @beacon.update(beacon_params)
        format.html { redirect_to @beacon, notice: 'Beacon was successfully updated.' }
        format.json { render :show, status: :ok, location: @beacon }
      else
        format.html { render :edit }
        format.json { render json: @beacon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beacons/1
  # DELETE /beacons/1.json
  def destroy
    @beacon.destroy
    respond_to do |format|
      format.html { redirect_to beacons_url, notice: 'Beacon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beacon
      @beacon = Beacon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beacon_params
      params.require(:beacon).permit(:name, :description, :uuid, :major, :minor, :lat, :lng, :address, :link)
    end
end
