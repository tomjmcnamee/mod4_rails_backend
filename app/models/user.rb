class User < ApplicationRecord
  has_many :score_histories
  has_secure_password
end
