class MagazinesController < ApplicationController
  def index
  	@magazines = Magazine.all
  end

  def show
    # SDP: What happens, if the user id cannot be found? Rails will raise an error which
    # can cause problems
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

    # SDP: Please check the format of your code, use a tool like Rubocop
    def magazine_params
    params
      .require(:magazine)
      .permit(:title)
  end

end
