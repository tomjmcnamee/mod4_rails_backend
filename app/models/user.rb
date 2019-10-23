class User < ApplicationRecord
  has_many :score_histories
  has_secure_password

  validates :name, :login_id, :password, presence: true
  validates :name, uniqueness: true

end
