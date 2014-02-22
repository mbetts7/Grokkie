require 'spec_helper'

describe "Skills" do  

	before do
		@category = Category.create!(name: 'Programming')
		@skill = @category.skills.create!(name: 'Javascript')
		@roadmap = @skill.roadmaps.create!(title: 'test', description: 'just testing to test')
		get category_skill_path(@category.id, @skill.id)

	end
	describe 'GET show page for a particular skill /categories/:category_id/skills/:id' do
		it 'should be successful' do
			response.status.should == 200
	    end

	    it 'should show the skill title' do
	    	response.body.should include("Javascript")
		end

		it 'should the roadmap title and description associated to that skill' do
			response.body.should include("test")
			response.body.should include("just testing to test")
	    end

	    it 'should show the roadmap votes as 0' do 
	    	response.body.should include("0")
	    end

	    it 'should show the username owner of that roadmap' 
	end
end