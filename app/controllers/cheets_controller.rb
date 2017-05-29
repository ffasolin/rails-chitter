class CheetsController < ApplicationController

  def index
    @cheets = Cheet.all
  end

  def create
    @cheet = Cheet.new(params.require(:cheets).permit(:text))
    if @cheet.save
      redirect_to @cheet
    else
      render "new"
    end
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
