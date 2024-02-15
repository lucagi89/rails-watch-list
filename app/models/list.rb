class List < ApplicationRecord
  has_one_attached :photo
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates :name, presence: true, uniqueness: true
  validate :photo_size

  private

  def photo_size
    if photo.attached? && photo.blob.byte_size > 5.megabytes
      errors.add(:photo, "should be less than 5MB")
      photo.purge  # Optionally purge the photo to prevent it from being saved
    end
  end
end
