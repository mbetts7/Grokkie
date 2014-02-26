module RoadmapsHelper

	def check_owner (current_user, roadmap)
		id = []
		user_roadmaps = current_user.roadmaps
		user_roadmaps.each {|roadmap| id << roadmap.id}
		id.include?(roadmap.id)
	end
end
