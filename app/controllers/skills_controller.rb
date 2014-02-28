class SkillsController < ApplicationController
  def show
  	category_id = params[:category_id]
  	skill_id = params[:id]
  	@category = Category.find(category_id)
  	@skill = @category.skills.find(skill_id)
  end
end
