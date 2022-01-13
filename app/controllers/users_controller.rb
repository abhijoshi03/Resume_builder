class UsersController < ApplicationController


	def new
		user = User.new
	end

	def create
		user = User.new(name: params[:session][:name],email: params[:session][:email],
			password: params[:session][:password],password_confirmation: params[:session][:password_confirmation])
		if user.save
			
            flash.now[:success] = 'Registration successful'
			redirect_to login_path
			user.profile = Profile.new
			user.profile.educations.create

		else
			flash[:error] = "Cannot create an user"
			render 'new'
		end
	end

# private 

# 	def user_params
# 		params.permit(:session[:name,:email,:password,:password_confirmation])
# 		params.inspect
# 	end
end


# params.permit(params[:session][:name],params[:session][:email],params[:session][:password],params[:session][:password_confirmation])
# 		params.inspect