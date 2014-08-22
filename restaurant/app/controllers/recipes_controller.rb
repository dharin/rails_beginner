class RecipesController < ApplicationController

	def index
		@user=User.find(params[:user_id])
	end

	def new 
		@user=User.find(params[:user_id])
		@recipe=@user.recipes.build
	end
	def create
		@recipe = Recipe.new(recipe_param)
		@recipe.user_id=params[:user_id]
	    if @recipe.save
	    	redirect_to edit_user_recipe_path(@recipe.user_id,@recipe.id)
	    end
	end

	def edit
		@recipe=Recipe.find(params[:id])
	end

	def recipe_param
		params.require(:recipe).permit(:name,:price)
	end

	
end
