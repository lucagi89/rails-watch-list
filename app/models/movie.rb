class Movie < ApplicationRecord
  # belongs_to :list
  # has_many :bookmarks
  # validates :title, uniqueness: true
  # before_destroy :check_for_bookmarks

  # private

  # def check_for_bookmarks
  #   if bookmarks.exists?
  #     errors.add(:base, "Cannot destroy record with associated bookmarks")
  #     throw(:abort)
  #   end
  # end
end
