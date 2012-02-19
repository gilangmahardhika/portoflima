class WorkGallery < ActiveRecord::Base
	belongs_to :attachable, :polymorphic => true

	validates	:image,
		:file_size => { :maximum => 10.megabytes.to_i }

	mount_uploader	:image, WorkUploader
end
