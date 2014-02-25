class GrokkiesController < ApplicationController
  def index
  	@categories = Category.all
   
    roadmaps = Roadmap.all
    @random_roadmaps = Roadmap.all.sample(6)
    
  end
end
