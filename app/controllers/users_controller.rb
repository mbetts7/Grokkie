class UsersController < ApplicationController
	def show
		id = params[:id]
		if id == "sign_out"
			redirect_to destroy_user_session_path
		else
		@profile = User.find(id)
	    end
	end

	def edit
		id = params[:id]
		@profile = User.find(id)
		@learning_style = ["Visual", "Auditory", "Kinesthetics"]
	end

	def update
		id = params[:id]
		profile = User.find(id)
		profile.update(profile_params)
		redirect_to user_path(profile)
	end

	private
	def profile_params
		params.require(:user).permit(:twitter_name, :github_name, :bio, :username, :learning_style)
	end
end