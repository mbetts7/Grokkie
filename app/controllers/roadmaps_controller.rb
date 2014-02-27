class RoadmapsController < ApplicationController
  before_filter :authenticate_user!, only:[:new, :create, :edit, :update, :destroy, :upvote]
  
  def new
    @roadmap = Roadmap.new()
  end

  def create
    new_roadmap = current_user.roadmaps.build(roadmap_params)
    if new_roadmap.save
       redirect_to roadmap_path(new_roadmap)
    else
      render :new
    end
  end

  def edit
    id = params[:id]
    @roadmap = Roadmap.find(id)
    if current_user.id != @roadmap.user.id
      render :file => "#{RAILS_ROOT}/public/404.html",  :status => 404
    end
  end

  def show
    id = params[:id]
    @roadmap = Roadmap.find(id)
    @resources = @roadmap.resources.all
    @profile = @roadmap.user
    respond_to do |f| 
          f.html
          f.json {render :json}
      end

  end

  def update_positions
      params[:position].each_with_index do |resource, index|
        resource = Resource.find(resource[:id])
        resource.update_attribute(:position_id, index)
      end
      respond_to do |f| 
          f.json {render json: {:success => "success"}}
      end
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
    redirect_to profile_path(current_user)
  end

  def upvote
    session[:return_to] ||= request.referer
    roadmap = Roadmap.find(params[:id])
    roadmap.liked_by current_user
    redirect_to session.delete(:return_to)
  end

  private 

  def roadmap_params
    params.require(:roadmap).permit(:title, :description, :skill_id, :image, :category_id)
  end
end

