class CocktailsController < ActionController::Base


def index
@cocktail = Cocktail.all
end


def new
@cocktail = Cocktail.new
end

def show
@cocktail = Cocktail.find(cocktail_params[:id])
end

def create
@cocktail = Cocktail.new(params[:cocktail])
@cocktail.save
end


private

def cocktail_params
  params.require(:cocktails).permit(:name)
end





end
