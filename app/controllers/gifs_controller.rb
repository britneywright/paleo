class GifsController < ApplicationController
  before_action :set_gif, only: [:show, :edit, :update, :destroy]

  def index
    @gifs = Gif.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gif
      @gif = Gif.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gif_params
      params.require(:gif).permit(:name, :truthy, :image_url)
    end
end