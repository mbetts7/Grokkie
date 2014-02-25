class GrokkiesController < ApplicationController
  def index
  	@categories = Category.all
   

    # random_categories.each do |c|
    #   @random_skill = c.skills.first
    # end
    # @random_roadmap = @random_skill.roadmaps.first
    cat_maxnum = Category.all.length
    category = Category.find(rand(1..cat_maxnum))
    roadmaps = category.roadmaps
    roadmap_maxnum= roadmaps.length
    @random_roadmap_1 = roadmaps[rand(0..roadmap_maxnum)]
    @random_roadmap_2 = roadmaps[rand(0..roadmap_maxnum)]
    @random_roadmap_3 = roadmaps[rand(0..roadmap_maxnum)]
    @random_roadmap_4 = roadmaps[rand(0..roadmap_maxnum)]
    @random_roadmap_5 = roadmaps[rand(0..roadmap_maxnum)]
    @random_roadmap_6 = roadmaps[rand(0..roadmap_maxnum)]
  end
end
