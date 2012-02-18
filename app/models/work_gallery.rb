class WorkGallery < ActiveRecord::Base
	belongs_to	:work

	validates	:image,
		:presence => true,
		:file_size => { :maximum => 10.megabytes.to_i }

	mount_uploader	:image, GalleryUploader
end
