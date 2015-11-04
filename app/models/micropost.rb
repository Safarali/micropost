class Micropost < ActiveRecord::Base
  belongs_to :user
  # From the newest to oldest, :desc is SQL for descending
  default_scope -> { order(created_at: :desc) }
  # Adds an image to the Micropost model
  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  validate :picture_size

  private
  
  # Validates the size of an uploaded picture.
  def picture_size
  	if picture.size > 5.megabytes
  		error.add(:picture, "should be less than 5MB")
  	end
  end
end
