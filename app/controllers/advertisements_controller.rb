class AdvertisementsController < SessionsController

before_action only: [:show, :edit, :update]

  def index
  	@advertisements = Advertisement.all
  end

  def show
  	@advertisement = Advertisement.find(params[:id])
  end

  def new
  	@advertisement = Advertisement.new
  end

  def create
    @advertisement = Advertisement.new(white_listed_parameters)
    if @advertisement.save
      flash[:notice] = 'New placement saved'
      redirect_to advertisements_path
    else
      render :new
    end
  end

  def edit
  	@advertisement = Advertisement.find(params[:id])
  end

  def update
  	@advertisement = Advertisement.find(params[:id])
  	if Advertisement.update(white_listed_parameters)
  		redirect_to advertisement_path(@advertisement)
  	else
  		render :edit
  	end
  end



  private

    def white_listed_parameters
    params
      .require(:advertisement)
      .permit(:format, :bleed_height, :bleed_width, :trim_height, :trim_width, :type_height, :type_width)
  end

end
