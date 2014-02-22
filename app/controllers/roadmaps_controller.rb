class RoadmapsController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def show
    id = params[:id]
    @roadmap = Roadmap.find(id)
  end

  def update
  end

  def destroy
  end
end
