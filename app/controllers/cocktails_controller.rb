class CocktailsController < ActionController::Base


  def index
    @cocktail = Cocktail.all
  end


  def new
    @cocktail = Cocktail.new(cocktail_params)
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path
    else
      render :new
    end
  end


  def show
   @cocktail = Cocktail.find(cocktail_params[:id])
  end


private

def cocktail_params
  params.require(:cocktail).permit(:name, :ingredients)
end

end
