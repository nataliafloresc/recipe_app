class RecipesController < ApplicationController
	before_action :authenticate_user!

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
 				redirect_to recipes_path
 			else
 				render :new
 			end
 	end 

 	def show
 		@recipes = current_user.recipes
 	end 

 	def my_recipes
 		@recipes = current_user.recipes
 		render :index
 	end

 	def destroy
 		@recipe = Recipe.find(params[:id])
 		@recipe.delete
 		redirect_to recipes_path
 	end 

 	def recipe_params
 		params.require(:recipe).permit(:name, :preparation_time, :ingredients, :difficulty_level, :directions, :photo, :category_id)
 	end
end 