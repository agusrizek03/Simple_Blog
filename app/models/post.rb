class Post < ApplicationRecord
	belongs_to :user
	has_many :comments
	has_many :images, dependent: :destroy

	def photo_files=(array=[])
		array.each do |f|
			images.new photo: f
		end		
	end
end
