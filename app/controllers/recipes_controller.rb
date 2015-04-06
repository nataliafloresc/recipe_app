class RecipesController < ApplicationController
	# before_action :authenticate_user!

	def index
		@recipes = Recipe.all
	end 


	def new
		@recipe = Recipe.new
	end 

	def create
 		@recipe = Recipe.new(recipe_params)
 		@recipe.user = current_user
 			if @recipe.save
 				redirect_to recipe_path
 			else
 				render :new
 			end
 	end 


 	def recipe_params
 		params.require(:recipe).permit(:name, :preparation_time)
 	end
end 