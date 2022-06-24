class Post < ApplicationRecord
  belongs_to :user, optional: true
  mount_uploader :image, ImageUploader
  validates :start_time, presence: true
end
