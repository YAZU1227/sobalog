class SobasController < ApplicationController
  def index
    @sobas = Soba.all
  end

  def new
    @soba = Soba.new
  end

  def create
    Soba.create(soba_params)
    redirect_to '/'
  end

  def search
    
    @q = Soba.ransack(params[:q])
    @sobas = @q.result
  end

  def search_results
    binding.pry
    @q = Soba.ransack(params[:q])
    @sobas = @q.result
  end
  


  private
  
  def soba_params
    params.require(:soba).permit(
      :name,
      type: [],
      hot_menu: [],
      cold_menu: [],
      side_menu: [],
      alcohol_menu: [],
      sobayu: [],
      eating_with: [],
      seat: [],
      price: []
    )
  end

end
