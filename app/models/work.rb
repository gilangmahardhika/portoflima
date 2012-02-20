class Work < ActiveRecord::Base
	attr_accessible :work_galleries_attributes, :title, :url, :user_id, :skill_category_id, :image, :description, :skill_ids

	belongs_to	:user
	belongs_to	:skill_category

	has_many	:work_galleries, :as => :attachable, :dependent => :destroy
	has_many	:comments
	has_many	:loves
	has_many	:points

	has_and_belongs_to_many :skills
	accepts_nested_attributes_for :work_galleries, :allow_destroy => true

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
    	# text  :skill do |g|
     #  		g.skill_category.skill && g.skill_category.skill.name
    	# end
  end

end
