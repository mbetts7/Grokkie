class GrokkiesController < ApplicationController
  def index
  	@categories = Category.all
   
    roadmaps = Roadmap.all
    @random_roadmaps = roadmaps.sample(6)
    @users = User.all
  end
end
