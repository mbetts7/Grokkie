class ProfilesController < ApplicationController
	def show
		id = params[:id]
		@profile = User.find(id)
	end

	def edit
	end

	def update
	end
end