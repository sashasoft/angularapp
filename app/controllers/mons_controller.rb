class MonsController < ApplicationController
  before_action :set_mon, only: [:show, :edit, :update, :destroy]

  # GET /mons
  # GET /mons.json
  def index
    @mons = Mon.all
  end

  # GET /mons/1
  # GET /mons/1.json
  def show
  end

  # GET /mons/new
  def new
    @mon = Mon.new
  end

  # GET /mons/1/edit
  def edit
  end

  # POST /mons
  # POST /mons.json
  def create
    @mon = Mon.new(mon_params)

    respond_to do |format|
      if @mon.save
        format.html { redirect_to @mon, notice: 'Mon was successfully created.' }
        format.json { render :show, status: :created, location: @mon }
      else
        format.html { render :new }
        format.json { render json: @mon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mons/1
  # PATCH/PUT /mons/1.json
  def update
    respond_to do |format|
      if @mon.update(mon_params)
        format.html { redirect_to @mon, notice: 'Mon was successfully updated.' }
        format.json { render :show, status: :ok, location: @mon }
      else
        format.html { render :edit }
        format.json { render json: @mon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mons/1
  # DELETE /mons/1.json
  def destroy
    @mon.destroy
    respond_to do |format|
      format.html { redirect_to mons_url, notice: 'Mon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mon
      @mon = Mon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mon_params
      params[:mon]
    end
end
