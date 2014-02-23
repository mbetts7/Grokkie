require 'spec_helper'

describe RoadmapsController  do

	describe "GET new roadmap" do 
		before(:each) do
			@roadmap = mock_model("Roadmap")
			allow(Roadmap).to receive(:new).and_return(@roadmap)
		end

	    it 'should assign a new instance of @roadmaps' do
          get :new
          expect(assigns(:roadmap)).to eq(@roadmap)
        end

        it 'should render the new template' do
       	get :new
       	expect(response).to render_template("new")
        end
	end

	describe "POST create" do
		before(:each) do
			@roadmap = mock_model("Roadmap")
			allow(Roadmap).to receive(:create)
		end

		it 'should create a Roadmap' do
			allow(Roadmap).to receive(:create).with({"title" => "test", "description" => "describing something!"})
		end
		it 'should redirect to Roadmap show page' do
			roadmap_id = "new roadmap"
			Roadmap.any_instance.should_receive(:save).and_return(true)
			Roadmap.any_instance.stub(:id).and_return(roadmap_id)
		    subject {post :create, :roadmap => {title: "test", description: "describing something"}}
		    response.should redirect_to(roadmap_path)
		end

	end
	
end