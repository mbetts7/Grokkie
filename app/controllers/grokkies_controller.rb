class GrokkiesController < ApplicationController
  def index
  	@categories = Category.all
   
    roadmaps = Roadmap.all
    roadmap_max = roadmaps.length
    @random_roadmaps = Roadmap.all.sample(6)
    # 36.times do
    #   roadmap = Roadmap.find(rand(1..roadmap_max))
    #   (@random_roadmaps << roadmap).uniq
      

    # end
    
  end
end
