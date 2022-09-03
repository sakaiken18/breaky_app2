class Post < ApplicationRecord
  belongs_to :user, optional: true
  has_many :completeds, dependent: :destroy
  mount_uploader :image, ImageUploader
  validates :start_time, presence: true
  
  def completed_by?(user)
    completeds.exists?(user_id: user.id)
  end
end
