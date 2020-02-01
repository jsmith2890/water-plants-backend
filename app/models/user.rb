class User < ApplicationRecord
  has_many :plants
  # validates :username, presence: true
end

