class Micropost < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: { maximum: 255 }

#  has_many :reverses_of_favorite, class_name: 'Favarite', foreign_key: 'micropost_id'
  has_many :favorites
#  has_many :reverses_of_favorites, class_name: 'Favarite'
  has_many :favoriteusers, through: :favorites, source: :user

end
