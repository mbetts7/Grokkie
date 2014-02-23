require 'spec_helper'

describe "Grokkie main page" do 
	before do
		@category = Category.create!(name: "Programming")
		@category.skills.create!(name: "Javascript")
	    get root_url
    end

	describe 'Grokkie index page' do
		it 'should return be successful' do
			response.status.should == 200
		end

		it 'should display categories' do
			response.body.should include("Programming")
		end

		it 'should display skills of that category' do
			response.body.should include("Javascript")
		end
	end
end
