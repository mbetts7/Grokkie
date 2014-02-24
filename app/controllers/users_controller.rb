class UsersController < ApplicationController
	def show
		id = params[:id]
		@profile = User.find(id)
	end

	def edit
		id = params[:id]
		@profile = User.find(id)
	end

	def update
		id = params[:id]
		profile = User.find(id)
		profile.update(profile_params)
		redirect_to user_path(profile)
	end

	private
	def profile_params
		params.require(:user).permit(:twitter_name, :github_name, :bio, :username)
	end
end