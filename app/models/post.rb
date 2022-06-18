class Post < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  validates :start_time, presence: true
end
