require 'pry'
class Backer
	attr_reader :name
	def initialize(name)
		@name = name
	end

	def back_project(project)
		ProjectBacker.new(project, self)
	end

	def backed_projects
		project_object = ProjectBacker.all.select do |project| 
			project.backer == self
			
		end
		project_object.map do |project_obj|
			project_obj.project
		end
	end

end

