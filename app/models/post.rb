class Post < ApplicationRecord
	has_many :comments
	belongs_to :user

	mount_uploader :avatar, AvatarUploader

	paginates_per 5
end
