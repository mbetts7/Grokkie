class ResourcesController < ApplicationController
  def new
    @resource = Resource.new()
  end

  def create
    roadmap = Roadmap.find(params[:roadmap_id])
    new_resource = roadmap.resources.create(resource_params)
    redirect_to roadmap_resource_path(roadmap, new_resource)
  end

  def edit
    @roadmap = Roadmap.find(params[:roadmap_id])
    @resource = @roadmap.resources.find(params[:id])
  end

  def update
    roadmap = Roadmap.find(params[:roadmap_id])
    resource = roadmap.resources.find(params[:id])
    resource.update(resource_params)
    redirect_to roadmap_resource_path(roadmap, resource)

  end

  def show
    @roadmap = Roadmap.find(params[:roadmap_id])
    @resource = @roadmap.resources.find(params[:id])
  end

  def destroy
  end

  private

  def resource_params
    params.require(:resource).permit(:name, :url, :description, :attachment)
  end
end
