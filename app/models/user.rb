class User < ApplicationRecord

  has_many :posts, dependent: :destroy
  has_many :completeds, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  def self.guest
    find_or_create_by!(email: "guest@example.com") do |user|
      user.password = SecureRandom.urlsafe_base64
    end
  end

  def completed_find(post_id)
    completeds.where(post_id: post_id).exists?
  end
end
