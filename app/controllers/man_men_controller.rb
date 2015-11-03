class ManMenController < ApplicationController
  before_action :set_man_man, only: [:show, :edit, :update, :destroy]

  # GET /man_men
  # GET /man_men.json
  def index
    @man_men = ManMan.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @man_men.as_json}
    end
  end

  # GET /man_men/1
  # GET /man_men/1.json
  def show
  end

  # GET /man_men/new
  def new
    @man_man = ManMan.new
  end

  # GET /man_men/1/edit
  def edit
  end

  # POST /man_men
  # POST /man_men.json
  def create
    @man_man = ManMan.new(man_man_params)

    respond_to do |format|
      if @man_man.save
        format.html { redirect_to @man_man, notice: 'Man man was successfully created.' }
        format.json { render :show, status: :created, location: @man_man }
      else
        format.html { render :new }
        format.json { render json: @man_man.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /man_men/1
  # PATCH/PUT /man_men/1.json
  def update
    respond_to do |format|
      if @man_man.update(man_man_params)
        format.html { redirect_to @man_man, notice: 'Man man was successfully updated.' }
        format.json { render :show, status: :ok, location: @man_man }
      else
        format.html { render :edit }
        format.json { render json: @man_man.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /man_men/1
  # DELETE /man_men/1.json
  def destroy
    @man_man.destroy
    respond_to do |format|
      format.html { redirect_to man_men_url, notice: 'Man man was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_man_man
      @man_man = ManMan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def man_man_params
      params.require(:man_man).permit(:name, :email, :age)
    end
end
