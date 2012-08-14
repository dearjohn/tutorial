class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_email(params[:session][:email])
		if user && user.authenticate(params[:session][:password])
			redirect_to user #直接跳转到user？？
		else
			flash.now[:error] = "Invalid email/password combintion!"
			render 'new'
		end
	end

	def destroy		
	end

end
