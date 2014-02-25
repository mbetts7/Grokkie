class GrokkiesController < ApplicationController
  def index
  	@categories = Category.all
   
    roadmaps = Roadmap.all
    roadmap_max = roadmaps.length
    @random_roadmaps = []
    6.times do
      roadmap = Roadmap.find(rand(1..roadmap_max))
      @random_roadmaps << roadmap
    end
    
  end
end
