class GrokkiesController < ApplicationController
  def index
  	@categories = Category.all
  end
end
