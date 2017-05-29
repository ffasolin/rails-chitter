class CheetsController < ApplicationController

  def index
    @cheets = Cheet.all
  end

  def create
    # render plain: params[:cheets].inspect
    @cheet = Cheet.new(params.require(:cheets).permit(:text))
    @cheet.save
    redirect_to @cheet
  end

  def show
    @cheet = Cheet.find(params[:id])
  end

  def new
  end

  private
  def cheet_params
    params.require(:cheets).permit(:text)
  end
end
