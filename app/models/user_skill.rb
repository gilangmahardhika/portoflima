class UserSkill < ActiveRecord::Base
	has_many	:users
	has_many	:skills
end
