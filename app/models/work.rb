class Work < ActiveRecord::Base
	belongs_to	:user
	belongs_to	:skill_category

	has_many	:work_galleries
	has_many	:comments
	has_many	:loves
	has_many	:points

	validates	:title, :presence => true
	validates	:description, :presence => true
	validates	:image,
		:presence => true,
		:file_size => { :maximum => 10.megabytes.to_i }

	mount_uploader	:image, WorkUploader

	searchable do
    	text  :title, :boost => 5
    	text  :user, :boost => 3 do |f|
      		f.user && f.user.name
    	end
    	text  :skill_category, :boost => 2 do |a|
      		a.skill_category && a.skill_category.name
    	end
    	text  :skill do |g|
      		g.skill_category.skill && g.skill_category.skill.name
    	end
  end

end
