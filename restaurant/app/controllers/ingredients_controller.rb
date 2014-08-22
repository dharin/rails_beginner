class IngredientsController < ApplicationController
  
  def index

    @user=User.find(user_id)
    @ingredient=@user.ingredients.build

  end
  def new

    @user = User.find(user_id)
    @ingredient = @user.ingredients.build 

  end

  def edit
    @user=User.find(params[:user_id])
    @ingredient=Ingredient.find(params[:id])
    respond_to do |format|
      format.js {}
    end
  end

  def create
    @user = User.find(user_id)
    @ingredient=@user.ingredients.build(ingredient_param)
    
    if @ingredient.save
      flash[:notice] = "Ingredient Added "
    end
      respond_to do |format|
    format.js {}
    end
  end

  def update

    @ingredient=Ingredient.find(params[:id])
    @user=@ingredient.user
     if @ingredient.update_attributes(ingredient_param)
          flash[:notice]="Ingredient successfully Updated"
      end   
    respond_to do |format|
          format.js
    end  

  end

  def show
  end

  def user_id
    params[:user_id]
  end

  def ingredient_param
    params.require(:ingredient).permit(:name,:rate,:unit_id)
  end

  def destroy
      @user=User.find(params[:user_id])
      ingredient=Ingredient.find(params[:id])
      flash[:notice] = "Ingredient Removed "
      ingredient.destroy
      respond_to do | format |
        format.js
       end
     
  end

end

