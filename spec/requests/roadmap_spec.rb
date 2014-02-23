require 'spec_helper'

describe 'Roadmap'  do
	before do
		@category = Category.create!(name: 'Programming')
		@skill = @category.skills.create!(name: 'Javascript')
		@roadmap = @skill.roadmaps.create!(title: 'test', description: 'just testing to test')
		@resource = @roadmap.resources.create!(name: 'learning to test', description: 'google is your bestfriend', url: 'www.google.com')
	end
	describe 'GET a roadmap through roadmaps/:id' do
		before do
			get roadmap_path(@roadmap.id)
		end

		it 'should be successful' do
			response.status.should == 200
		end
		it 'should show the roadmap title, description' do
			response.body.should include('test')
			response.body.should include('just testing to test')
		end
		it 'should show the author/user of the roadmap'
		it 'should show all the resources assosiated to the current roadmap' do
			response.body.should include('learning to test')
		end
	end
end