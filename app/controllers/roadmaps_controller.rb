class RoadmapsController < ApplicationController
  def new
    @roadmap = Roadmap.new()
    @categories = Category.all
    @skills = Skill.all
  end

  def create
    binding.pry
    skill = params.permit[:skill_id]
    new_roadmap = skill.roadmaps.create(roadmap_params)
    redirect_to roadmap_path(new_roadmap)
  end

  def edit
    id = params[:id]
    @roadmap = Roadmap.find(id)
  end

  def show
    id = params[:id]
    @roadmap = Roadmap.find(id)
  end

  def update
    id = params[:id]
    update_roadmap = Roadmap.find(id)
    update_roadmap.update(roadmap_params)
    redirect_to roadmap_path(update_roadmap)
  end

  def destroy
    id = params[:id]
    Roadmap.find(id).destroy
    redirect_to root_url
  end

  private 

  def roadmap_params
    params.require(:roadmap).permit(:title, :description)
  end
end
