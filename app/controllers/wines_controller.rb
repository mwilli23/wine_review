class WinesController < ApplicationController
 before_action :set_wine, only: [ :show, :edit, :update, :destroy ]


 def index
  @available_at = Time.now
  @wines = Wine.all
 end
 def show
# @wine = Wine.find(params[:id])
 end
 def new
  @wine = Wine.new
 end

 def create
  @wine = Wine.new(wine_params)
  if @wine.save
    redirect_to @wine, notice: "#{@wine.name} was created!"
  else
    render :new
  end
end


def edit
 #@wine = Wine.find(params[:id])
end

def update
  if @wine.update(wine_params)
    redirect_to @wine, notice: "#{@wine.name} was updated!"
  else
    render :edit
  end
end


def destroy
 # @wine = Wine.find(params[:id])
  @wine.destroy
  redirect_to wines_url
end

 private
 def set_wine
  @wine = Wine.find(params[:id])
 end
 def wine_params
  params.require(:wine).permit(:name, :winery, :year, :country, :varietal)
 end
end