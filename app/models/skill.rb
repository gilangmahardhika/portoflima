class Skill < ActiveRecord::Base
	# has_many	:users, :through => :user_skills
	# has_many	:user_skills, :dependent => :destroy
	belongs_to	:skill_category

	has_and_belongs_to_many	:users

	validates 	:name, :presence => true

end
