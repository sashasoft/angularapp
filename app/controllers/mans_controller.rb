class MansController < ApplicationController
  protect_from_forgery
  before_action :set_man, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json
  
  
  def index
    @mans = Man.all
	  #respond_with(@mans) do |format|
    #  format.json { render :json => @mans }
    #  format.html
	  #end
	  respond_with(@mans)
	end
  
  def show
     #render json: @man
     respond_with(@man)
  end
  
  def new
    @man = Man.new
    respond_with @man
  end
  
  def edit
  end
  
  def create
    @man = Man.new(man_params)
    if @man.save
      render json: @man, status: :ok
    else
      render json: {man: @man.errors, status: :no_content}
    end
  end   
  
  def update
    if @man.update(man_params)
      render json: @man, status: :ok
    else
      render json: {man: @man.errors, status: :no_content}
    end
  end

  def destroy
    @man.destroy
    render json: {status: :ok}
  end
  
  
  
  
  
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_man
      @man = Man.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def man_params
      params.require(:man).permit(:name, :email, :age)
    end
end
