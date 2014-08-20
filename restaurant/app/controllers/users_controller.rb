class UsersController < ApplicationController
  def new
        @user = User.new
  end

  def show
  end

  def index
    @users=User.all
  end

  def update
    
      @user=User.find(params[:id])
     if @user.update_attributes(user_param)
          flash[:notice]="User successfully Updated"
      end   
    respond_to do |format|
          format.js
    end


  end

  def create
    @user=User.new(user_param)
     if @user.save
          flash[:notice]="User successfully Created"
      end   
    respond_to do |format|
          format.js
    end
  end

  def destroy
    user=User.find(params[:id])
      respond_to do |format|
      if user.destroy
        flash[:notice] = "User successfully Removed"        
        format.js
      else
        flash[:notice] = "User Not  destroy"        
        format.js
      end
  
    end
  end

  def edit
    @user=User.find(params[:id])
    respond_to do |format|
      format.js
      format.html { }
    end
  end

  def user_param
    params.require(:user).permit(:username,:password,:password_confirmation,:admin_password)
  end
end
