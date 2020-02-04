# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  has_many :plants

  validates :username, uniqueness: { case_sensitive: false }, presence: true
end
