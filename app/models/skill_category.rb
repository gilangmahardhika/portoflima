class SkillCategory < ActiveRecord::Base
	has_many	:skills
	has_many	:works
end
