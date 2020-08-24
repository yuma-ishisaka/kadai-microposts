class Micropost < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  has_many :users, through: :favorites, source: :user
  validates :content, presence: true, length: { maximum: 255 }
 

  

end