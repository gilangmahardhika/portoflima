class User < ActiveRecord::Base
	require	'file_size_validator'

	# Relation
	has_many	:works
	has_many	:loves
	has_many	:points
	has_many	:comments
	# has_many	:skills, :through => :user_skills
	# has_many	:user_skills, :dependent => :destroy

	belongs_to	:user_type

	has_and_belongs_to_many	:skills

	validates	:name, :presence => true
	validates	:email, :presence => true
	validates	:about, :presence => true
	validates	:user_type_id, :presence => true
	validates	:image,
		:presence => true,
		:file_size => { :maximum => 10.megabytes.to_i }

	mount_uploader	:image, UserUploader
end
