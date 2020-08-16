class User < ApplicationRecord
  before_save { self.email.downcase! } #save前にemailを小文字化
  validates :name, presence: true, length: { maximum: 50 } #文字数制限
  validates :email, presence: true, length: { maximum: 255 }, #文字数制限
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, #メアド形式の指定
                    uniqueness: { case_sensitive: false } #重複の禁止
  has_secure_password
end
