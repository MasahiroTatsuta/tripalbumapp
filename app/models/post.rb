class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :caption, presence: true, length: { maximum: 100 }
  has_one_attached :avatar
  has_many_attached :images
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  acts_as_taggable

  def liked_by(user)
    Like.find_by(user_id: user.id, post_id: id)
  end
end
