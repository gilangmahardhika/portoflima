class Skill < ActiveRecord::Base
	has_many	:users, :through => :user_skills
	belongs_to	:skill_category

	validates 	:name, :presence => true

end
