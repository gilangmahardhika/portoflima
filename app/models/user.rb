class User < ActiveRecord::Base
	require	'file_size_validator'

	# Relation
	has_many	:works
	has_many	:loves
	has_many	:points
	has_many	:comments
	has_many	:skills, :through => :user_skills

	belongs_to	:user_type

	validates	:name, :presence => true
	validates	:email, :presence => true
	validates	:image,
		:presence => true,
		:file_size => { :maximum => 10.megabytes.to_i }

	mount_uploader	:image, UserUploader
end
