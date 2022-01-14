class UsersController < ApplicationController


	def new
		user = User.new
	end

	def create
		user = User.new(name: params[:session][:name],email: params[:session][:email],password: params[:session][:password],password_confirmation: params[:session][:password_confirmation])
		if user.save
			
            flash.now[:success] = 'Registration successful'
			redirect_to login_path
			user.profile = Profile.new
			user.profile.educations.create

		else
			flash[:danger] = "Cannot create an user"
			render 'new'
		end
	end


end


 