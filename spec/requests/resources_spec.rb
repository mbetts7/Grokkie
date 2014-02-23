require 'spec_helper'

describe "Resources" do 
	before do
		@roadmap = Roadmap.create!(title: 'test', description: 'just testing to test')
		@resource = @roadmap.resources.create!(name: 'learning to test', description: 'google is your bestfriend', url: 'www.google.com')
	end

	describe 'GET resource from roadmap_resource_path' do
	    before do
	    	get roadmap_resource_path(@roadmap, @resource)
	    end

	    it 'should be successful' do
	    	response.status.should == 200
	    end

	    it 'should show the resource title and description' do
	    	response.body.should include('learning to test')
			response.body.should include('google is your bestfriend', url: 'www.google.com')
	    end
	end
end