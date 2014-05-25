class Video < ActiveRecord::Base
	# mount_uploader :file, VideoUploader

	extend FriendlyId
	friendly_id :title, use: [:slugged, :finders]

	validates_presence_of :panda_video_id

	belongs_to :user

	def panda_video
      @panda_video ||= Panda::Video.find(panda_video_id)
    end
end
