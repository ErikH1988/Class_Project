class MagazinesController < ApplicationController
  def index
  	@magazines = Magazine.all
  end

  def show
  	@magazine = Magazine.find(params[:id])
  end

  def new
  	@magazine = Magazine.new
  end

  def create
    @magazine = Magazine.new(magazine_params)
    if @magazine.save
      flash[:notice] = 'New magazine added'
      redirect_to magazines_path
    else
      render :new
    end
  end

  private

    def magazine_params
    params
      .require(:magazine)
      .permit(:title)
  end

end
