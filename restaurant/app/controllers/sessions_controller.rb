class SessionsController < ApplicationController

def create
		
	if user = User.where(username: params[:username],password: params[:password]).first
		session[:user_id] = user.id
		redirect_to users_path, :notice => "Logged in successfully"
	else
		flash.now[:alert] = "Invalid login/password combination"
		render :action => 'new'
	end
end

end
